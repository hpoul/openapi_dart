import 'package:meta/meta.dart';
import 'package:uri/uri.dart';

abstract class OpenApiRequest {
  List<String> headerParameter(String name);

  List<String> cookieParameter(String name);

  List<String> pathParameter(String name);

  List<String> queryParameter(String name);

  Future<Map<String, dynamic>> readJsonBody();
}

abstract class OpenApiResponse {
  int get status;
  Map<String, dynamic> bodyJson;
//  Map<String, dynamic> bodyJson;
  final Map<String, List<String>> headers = {};
}

typedef RouteHandler = Future<OpenApiResponse> Function(OpenApiRequest request);

class OpenApiServerRouterBase {
  final List<_RouteConfig> configs = [];

  @protected
  void addRoute(
    String path,
    String operation,
    RouteHandler handle,
  ) {
    configs.add(_RouteConfig(path, operationFromString(operation), handle));
  }

  @protected
  int paramToInt(List<String> value) {
    return int.parse(value.first);
  }

  @protected
  String paramToString(List<String> value) {
    return value.first;
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
  _RouteConfig(this.path, this.operation, this.handler)
      : uriParser = UriParser(UriTemplate(path));

  final String path;
  final UriParser uriParser;
  final Operation operation;
  final RouteHandler handler;

  @override
  String toString() {
    return '_RouteConfig{path: $path, uriParser: $uriParser,'
        ' operation: $operation, handler: $handler}';
  }
}
