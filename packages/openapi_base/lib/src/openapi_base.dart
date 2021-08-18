import 'dart:typed_data';

import 'package:meta/meta.dart';
import 'package:openapi_base/openapi_base.dart';
import 'package:openapi_base/src/openapi_client_base.dart';
import 'package:openapi_base/src/openapi_content_type.dart';
import 'package:uri/uri.dart';

abstract class OpenApiRequest {
  List<String> headerParameter(String name);

  List<String> cookieParameter(String name);

  List<String> pathParameter(String name);

  List<String> queryParameter(String name);

  Future<Map<String, dynamic>> readJsonBody();

  Future<Map<String, List<String>>> readUrlEncodedBody();
  Future<Map<String, String>> readUrlEncodedBodyFlat() async =>
      (await readUrlEncodedBody())
          .map((key, value) => MapEntry(key, value.first));
  Future<String> readBodyString();
  Future<Uint8List> readBodyBytes();
}

abstract class OpenApiResponseWithBody extends OpenApiResponse {
  @override
  OpenApiContentType get contentType;
}

abstract class OpenApiResponseBodyJson extends OpenApiResponseWithBody {
  Map<String, dynamic> get bodyJson;
}

abstract class OpenApiResponseBodyString extends OpenApiResponseWithBody {
  String get body;
}

abstract class OpenApiResponseBodyBinary {
  Uint8List get body;
}

abstract class OpenApiResponse {
  int get status;
  OpenApiContentType? get contentType;

//  Map<String, dynamic> bodyJson;
  final Map<String, List<String>> headers = {};

  @override
  String toString() {
    return '$runtimeType{${propertiesToString()}';
  }

  @protected
  Map<String, Object?> propertiesToString() {
    return {};
  }
}

abstract class ApiEndpoint {}

typedef RouteHandler = Future<OpenApiResponse> Function(OpenApiRequest request);

//typedef ServiceProvider<T extends Service> = FutureOr<U> Function<U>(Future<U> callback(T));
typedef ApiEndpointCallback<ENDPOINT extends ApiEndpoint, RET> = Future<RET>
    Function(ENDPOINT impl);

abstract class ApiEndpointProvider<ENDPOINT extends ApiEndpoint> {
  ApiEndpointProvider();
  factory ApiEndpointProvider.static(ENDPOINT endpoint) {
    return StaticEndpointProvider(endpoint);
  }

  Future<RET> invoke<RET>(
      OpenApiRequest request, ApiEndpointCallback<ENDPOINT, RET> callback);
}

class StaticEndpointProvider<ENDPOINT extends ApiEndpoint>
    extends ApiEndpointProvider<ENDPOINT> {
  StaticEndpointProvider(this.endpoint);

  final ENDPOINT endpoint;

  @override
  Future<RET> invoke<RET>(OpenApiRequest request,
      ApiEndpointCallback<ENDPOINT, RET> callback) async {
    return await callback(endpoint);
  }
}

//typedef ServiceProvider<T extends Service> = FutureOr<
//    U> Function<U>(ServiceProviderCallback<T, U> impl);

abstract class OpenApiServerRouterBase {
  OpenApiServerRouterBase() {
    configure();
  }

  final List<_RouteConfig> configs = [];

  @protected
  void configure();

  @protected
  void addRoute(
    String path,
    String operation,
    RouteHandler handle, {
    required List<SecurityRequirement> security,
  }) {
    configs.add(_RouteConfig(path, operationFromString(operation), handle,
        security: security));
  }

  @protected
  T paramRequired<T>(
      {required String name,
      List<String>? value,
      required T Function(List<String> value) decode}) {
    if (value == null || value.isEmpty) {
      throw MissingParameterException(name);
    }
    return decode(value);
  }

  @protected
  T? paramOpt<T>(
      {required String name,
      List<String>? value,
      required T Function(List<String> value) decode}) {
    if (value == null || value.isEmpty) {
      return null;
    }
    return decode(value);
  }

  @protected
  int paramToInt(List<String> value) {
    return int.parse(value.first);
  }

  @protected
  String paramToString(List<String> value) {
    return value.first;
  }

  @protected
  bool paramToBool(List<String> value) {
    final str = paramToString(value).toLowerCase();
    return str == 'true' || str == '1';
  }
}

enum Operation {
  get,
  put,
  post,
  delete,
  options,
  head,
  patch,
  trace,
}

Map<String, Operation> _operationsMap() {
  final index = Operation.get.toString().indexOf('.') + 1;
  return Map.fromEntries(
      Operation.values.map((e) => MapEntry(e.toString().substring(index), e)));
}

final Map<String, Operation> _operations = _operationsMap();

Operation operationFromString(String operation) =>
    _operations[operation.toLowerCase()] ??
    (() => throw StateError('Invalid operation $operation'))();

class _RouteConfig {
  _RouteConfig(this.path, this.operation, this.handler,
      {required this.security})
      : uriParser = UriParser(UriTemplate(path));

  final String path;
  final UriParser uriParser;
  final Operation operation;
  final RouteHandler handler;
  final List<SecurityRequirement> security;

  @override
  String toString() {
    return '_RouteConfig{path: $path, uriParser: $uriParser,'
        ' operation: $operation, handler: $handler}';
  }
}

class SecurityRequirement {
  SecurityRequirement({required this.schemes});
  List<SecurityRequirementScheme> schemes;
}

class SecurityRequirementScheme {
  SecurityRequirementScheme({required this.scheme, required this.scopes});
  final SecurityScheme scheme;
  final List<String> scopes;
}

abstract class OpenApiContent {}

abstract class SecurityScheme<T extends SecuritySchemeData> {
  /// apply security data into a client side request.
  void applyToRequest(OpenApiClientRequest request, T data);

  /// extract security data from a server side request.
  T? fromRequest(OpenApiRequest request);
}

abstract class SecuritySchemeData {}

enum SecuritySchemeHttpScheme {
  bearer,
}

class SecuritySchemeHttpData extends SecuritySchemeData {
  SecuritySchemeHttpData({this.bearerToken});

  final String? bearerToken;
}

class SecuritySchemeHttp extends SecurityScheme<SecuritySchemeHttpData> {
  SecuritySchemeHttp({required this.scheme});
  final SecuritySchemeHttpScheme scheme;
  static const _headerName = 'Authorization';
  static const _headerPrefix = 'Bearer ';

  @override
  void applyToRequest(
      OpenApiClientRequest request, SecuritySchemeHttpData data) {
    request.addHeaderParameter(
      _headerName,
      ['$_headerPrefix${data.bearerToken}'],
    );
  }

  @override
  SecuritySchemeHttpData? fromRequest(OpenApiRequest request) {
    final authHeader = request.headerParameter(_headerName);
    if (authHeader.isNotEmpty) {
      final auth = authHeader.first;
      if (auth.startsWith(_headerPrefix)) {
        final token = auth.substring(_headerPrefix.length);
        return SecuritySchemeHttpData(bearerToken: token);
      }
    }
    return null;
  }
}

class SecuritySchemeApiKeyData extends SecuritySchemeData {
  SecuritySchemeApiKeyData({required this.apiKey});
  final String apiKey;
}

class SecuritySchemeApiKey extends SecurityScheme<SecuritySchemeApiKeyData> {
  SecuritySchemeApiKey(
      {required this.name,
      required this.writeToRequest,
      required this.readFromRequest});

  final String name;
  final void Function(OpenApiClientRequest request, String value)
      writeToRequest;
  final List<String> Function(OpenApiRequest request) readFromRequest;

  @override
  void applyToRequest(
      OpenApiClientRequest request, SecuritySchemeApiKeyData data) {
    writeToRequest(request, data.apiKey);
  }

  @override
  SecuritySchemeApiKeyData? fromRequest(OpenApiRequest request) {
    final data = readFromRequest(request);
    if (data.isNotEmpty) {
      return SecuritySchemeApiKeyData(apiKey: data.first);
    }
    return null;
  }
}
