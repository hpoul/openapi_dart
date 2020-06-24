import 'package:meta/meta.dart';
import 'package:openapi_base/src/openapi_content_type.dart';
import 'package:uri/uri.dart';

abstract class OpenApiRequest {
  List<String> headerParameter(String name);

  List<String> cookieParameter(String name);

  List<String> pathParameter(String name);

  List<String> queryParameter(String name);

  Future<Map<String, dynamic>> readJsonBody();
}

abstract class OpenApiResponseBodyJson {
  Map<String, dynamic> get bodyJson;
}

abstract class OpenApiResponseBodyString {
  String get body;
}

abstract class OpenApiResponse {
  int get status;
  OpenApiContentType get contentType;

//  Map<String, dynamic> bodyJson;
  final Map<String, List<String>> headers = {};

  @override
  String toString() {
    return '$runtimeType{${propertiesToString()}';
  }

  @protected
  Map<String, Object> propertiesToString() {
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

  Future<RET> invoke<RET>(ApiEndpointCallback<ENDPOINT, RET> callback);
}

class StaticEndpointProvider<ENDPOINT extends ApiEndpoint>
    extends ApiEndpointProvider<ENDPOINT> {
  StaticEndpointProvider(this.endpoint);

  final ENDPOINT endpoint;

  @override
  Future<RET> invoke<RET>(ApiEndpointCallback<ENDPOINT, RET> callback) async {
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
    List<SecurityRequirement> security,
  }) {
    configs.add(_RouteConfig(path, operationFromString(operation), handle,
        security: security));
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
    final str = paramToString(value)?.toLowerCase();
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
  final index = Operation.get.toString().indexOf('.');
  return Map.fromEntries(
      Operation.values.map((e) => MapEntry(e.toString().substring(index), e)));
}

final Map<String, Operation> _operations = _operationsMap();

Operation operationFromString(String operation) =>
    _operations[operation.toLowerCase()];

class _RouteConfig {
  _RouteConfig(this.path, this.operation, this.handler, {this.security})
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
  SecurityRequirement({this.schemes});
  List<SecurityRequirementScheme> schemes;
}

class SecurityRequirementScheme {
  SecurityRequirementScheme({this.scheme, this.scopes});
  final SecurityScheme scheme;
  final List<String> scopes;
}

abstract class SecurityScheme {}

enum SecuritySchemeHttpScheme {
  bearer,
}

class SecuritySchemeHttp extends SecurityScheme {
  SecuritySchemeHttp({@required this.scheme}) : assert(scheme != null);
  final SecuritySchemeHttpScheme scheme;
}
