/// Represents the content type header describing content encoding for
/// request and responses.
class OpenApiContentType {
  const OpenApiContentType._(this.contentType);

  /// Parses the value as returned by [toString]
  factory OpenApiContentType.parse(String value) {
    return OpenApiContentType._(value);
  }

  static const json = OpenApiContentType._('application/json');
  static const html = OpenApiContentType._('text/html');
  static const textPlain = OpenApiContentType._('text/plain');
  static const octetStream = OpenApiContentType._('application/octet-stream');
  static const urlencoded =
      OpenApiContentType._('application/x-www-form-urlencoded');

  final String contentType;

  bool get isString => contentType.startsWith('text/');
  bool get isJson => contentType.startsWith(json.contentType);

  static const allKnown = [json, html, urlencoded];

  /// Reverse of [parse]
  @override
  String toString() {
    return contentType;
  }

  bool matches(OpenApiContentType contentType) {
    // TODO we should probably support wildcards, ignore encodings, etc.
    return this.contentType == contentType.contentType;
  }
}
