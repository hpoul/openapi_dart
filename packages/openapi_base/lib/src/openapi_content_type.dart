class OpenApiContentType {
  const OpenApiContentType._(this.contentType);

  /// Parses the value as returned by [toString]
  factory OpenApiContentType.parse(String value) {
    return OpenApiContentType._(value);
  }

  static const json = OpenApiContentType._('application/json');
  static const html = OpenApiContentType._('text/html');

  final String contentType;

  bool get isString => contentType.startsWith('text/');
  bool get isJson => contentType.startsWith(json.contentType);

  /// Reverse of [parse]
  @override
  String toString() {
    return contentType;
  }
}
