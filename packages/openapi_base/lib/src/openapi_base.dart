import 'package:meta/meta.dart';
import 'package:shelf/shelf.dart';

abstract class OpenApiRequest {
  List<String> headerParameter(String name);
  List<String> cookieParameter(String name);
  List<String> pathParameter(String name);
  List<String> queryParameter(String name);

  Map<String, dynamic> readJsonBody();
}

abstract class OpenApiResponse {}

class OpenApiServerRouterBase {
  @protected
  void addRoute(
    String path,
    String operation,
    Future<OpenApiResponse> Function(OpenApiRequest request) handle,
  ) {
    Request tmp;
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

class RouteConfig {}
