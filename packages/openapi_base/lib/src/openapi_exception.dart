abstract class OpenApiResponseException implements Exception {
  int get status;
  String get message;

  @override
  String toString() {
    return '$runtimeType{status=$status,message=$message}';
  }
}

class UnauthorizedException extends OpenApiResponseException
    implements Exception {
  UnauthorizedException(this.message);

  @override
  int get status => 401;

  @override
  final String message;
}
