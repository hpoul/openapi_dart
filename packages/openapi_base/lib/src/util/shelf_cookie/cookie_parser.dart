import 'dart:io';

import 'package:collection/collection.dart' show IterableExtension;
import 'package:shelf/shelf.dart';

/// Parses cookies from the `Cookie` header of a [Request].
///
/// Stores all cookies in a [cookies] list, and has convenience
/// methods to manipulate this list.
///
/// `toString()` method converts list items to a `Set-Cookie`
/// HTTP header value according to RFC 2109 spec (deprecated).
class CookieParser {
  /// Creates a new [CookieParser] by parsing the `Cookie` header [value].
  CookieParser.fromCookieValue(String? value) {
    if (value != null) {
      cookies.addAll(_parseCookieString(value));
    }
  }

  /// Factory constructor to create a new instance from request [headers].
  factory CookieParser.fromHeader(Map<String, dynamic> headers) {
    return CookieParser.fromCookieValue(
        headers[HttpHeaders.cookieHeader] as String?);
  }

  /// A list of parsed cookies.
  final List<Cookie> cookies = [];

  /// Denotes whether the [cookies] list is empty.
  bool get isEmpty => cookies.isEmpty;

  /// Retrieves a cookie by [name].
  Cookie? get(String name) =>
      cookies.firstWhereOrNull((Cookie cookie) => cookie.name == name);

  /// Adds a new cookie to [cookies] list.
  Cookie set(
    String name,
    String value, {
    String? domain,
    String? path,
    DateTime? expires,
    bool? httpOnly,
    bool? secure,
    int? maxAge,
  }) {
    final cookie = Cookie(name, value);
    if (domain != null) {
      cookie.domain = domain;
    }
    if (path != null) {
      cookie.path = path;
    }
    if (expires != null) {
      cookie.expires = expires;
    }
    if (httpOnly != null) {
      cookie.httpOnly = httpOnly;
    }
    if (secure != null) {
      cookie.secure = secure;
    }
    if (maxAge != null) {
      cookie.maxAge = maxAge;
    }

    // Update existing cookie, or append new one to list.
    final index = cookies.indexWhere((item) => item.name == name);
    if (index != -1) {
      cookies.replaceRange(index, index + 1, [cookie]);
    } else {
      cookies.add(cookie);
    }
    return cookie;
  }

  /// Removes a cookie from list by [name].
  void remove(String name) =>
      cookies.removeWhere((Cookie cookie) => cookie.name == name);

  /// Clears the cookie list.
  void clear() => cookies.clear();

  /// Converts the cookies to a string value to use in a `Set-Cookie` header.
  ///
  /// This implements the old RFC 2109 spec, which allowed for multiple
  /// cookies to be folded into a single `Set-Cookie` header value,
  /// separated by commas.
  ///
  /// As of RFC 6265, this folded mechanism is deprecated in favour of
  /// a multi-header approach.
  ///
  /// Unfortunately, Shelf doesn't currently support multiple headers
  /// of the same type. This is an ongoing issue, but once resolved,
  /// this method can be deprecated.
  ///
  /// https://github.com/dart-lang/shelf/issues/44
  @override
  String toString() {
    return cookies.fold(
      '',
      (prev, element) => prev.isEmpty
          ? element.toString()
          : '${prev.toString()}, ${element.toString()}',
    );
  }
}

/// Parse a Cookie header value according to the rules in RFC 6265.
/// This function was adapted from `dart:io`.
List<Cookie> _parseCookieString(String s) {
  final cookies = <Cookie>[];

  var index = 0;

  bool done() => index == -1 || index == s.length;

  void skipWS() {
    while (!done()) {
      if (s[index] != ' ' && s[index] != '\t') {
        return;
      }
      index++;
    }
  }

  String parseName() {
    final start = index;
    while (!done()) {
      if (s[index] == ' ' || s[index] == '\t' || s[index] == '=') {
        break;
      }
      index++;
    }
    return s.substring(start, index);
  }

  String parseValue() {
    final start = index;
    while (!done()) {
      if (s[index] == ' ' || s[index] == '\t' || s[index] == ';') {
        break;
      }
      index++;
    }
    return s.substring(start, index);
  }

  bool expect(String expected) {
    if (done()) {
      return false;
    }
    if (s[index] != expected) {
      return false;
    }
    index++;
    return true;
  }

  while (!done()) {
    skipWS();
    if (done()) {
      continue;
    }
    final name = parseName();
    skipWS();
    if (!expect('=')) {
      index = s.indexOf(';', index);
      continue;
    }
    skipWS();
    final value = parseValue();
    try {
      cookies.add(Cookie(name, value));
    } catch (_) {
      // Skip it, invalid cookie data.
    }
    skipWS();
    if (done()) {
      continue;
    }
    if (!expect(';')) {
      index = s.indexOf(';', index);
      continue;
    }
  }

  return cookies;
}
