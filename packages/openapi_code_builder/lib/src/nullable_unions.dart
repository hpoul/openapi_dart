import 'package:open_api_forked/v3.dart';

/// Rewrites `anyOf`/`oneOf` of a schema and `{type: 'null'}`, the way
/// OpenAPI 3.1 documents (for example from FastAPI) write a nullable
/// reference, into the schema itself made nullable:
///
/// ```yaml
/// pet:
///   anyOf:
///     - $ref: '#/components/schemas/Pet'
///     - type: 'null'
/// ```
///
/// is generated like `pet: {$ref: '#/components/schemas/Pet', nullable: true}`.
///
/// The generator does not support `anyOf`/`oneOf` otherwise, so without this
/// such a property would become an empty class.
///
/// Callbacks and webhooks are not walked, as the generator ignores them.
void simplifyNullableUnions(APIDocument api) => _Simplifier().document(api);

final class _Simplifier {
  final _seen = Set<APISchemaObject>.identity();

  void document(APIDocument api) {
    final components = api.components;
    if (components != null) {
      components.schemas.updateAll((_, schema) => _schema(schema));
      components.parameters.values.forEach(_parameter);
      components.requestBodies.values.forEach(_requestBody);
      components.responses.values.forEach(_response);
      components.headers.values.forEach(_header);
      components.pathItems.values.forEach(_path);
    }
    api.paths.values.forEach(_path);
  }

  void _path(APIPath path) {
    path.parameters.forEach(_parameter);
    for (final operation in path.operations.values) {
      operation.parameters.forEach(_parameter);
      final body = operation.requestBody;
      if (body != null) {
        _requestBody(body);
      }
      operation.responses.values.forEach(_response);
    }
  }

  void _parameter(APIParameter parameter) {
    final schema = parameter.schema;
    if (schema != null) {
      parameter.schema = _schema(schema);
    }
    parameter.content.values.forEach(_mediaType);
  }

  void _header(APIHeader header) {
    final schema = header.schema;
    if (schema != null) {
      header.schema = _schema(schema);
    }
    header.content.values.forEach(_mediaType);
  }

  void _requestBody(APIRequestBody body) =>
      body.content.values.forEach(_mediaType);

  void _response(APIResponse response) {
    response.content.values.forEach(_mediaType);
    response.headers.values.forEach(_header);
  }

  void _mediaType(APIMediaType mediaType) {
    final schema = mediaType.schema;
    if (schema != null) {
      mediaType.schema = _schema(schema);
    }
  }

  /// Returns the schema to use in place of [schema], and simplifies the
  /// schemas inside it.
  APISchemaObject _schema(APISchemaObject schema) {
    final simplified = _nullableUnion(schema) ?? schema;
    // `$ref`s are walked too: a `$ref` has its own maps of properties
    // (holding the same schemas as its target's), and the generator may
    // build a class from it before reaching the target.
    if (_seen.add(simplified)) {
      simplified.properties.updateAll((_, s) => _schema(s));
      final items = simplified.items;
      if (items != null) {
        simplified.items = _schema(items);
      }
      final additional = simplified.additionalPropertySchema;
      if (additional != null) {
        simplified.additionalPropertySchema = _schema(additional);
      }
      for (final list in [
        simplified.allOf,
        simplified.anyOf,
        simplified.oneOf,
      ]) {
        for (var i = 0; i < list.length; i++) {
          list[i] = _schema(list[i]);
        }
      }
    }
    return simplified;
  }

  /// The non-null member of `anyOf: [X, {type: 'null'}]` (or `oneOf`),
  /// made nullable, or null if [schema] is not such a union.
  ///
  /// [schema] may be a `$ref` to such a union. Its `description`,
  /// `default`, `deprecated`, `readOnly` and `writeOnly` are kept, unless the
  /// member has its own.
  static APISchemaObject? _nullableUnion(APISchemaObject schema) {
    if (schema.types.isNotEmpty ||
        schema.properties.isNotEmpty ||
        schema.allOf.isNotEmpty ||
        (schema.anyOf.isEmpty == schema.oneOf.isEmpty)) {
      return null;
    }
    final members = schema.anyOf.isNotEmpty ? schema.anyOf : schema.oneOf;
    if (members.length != 2) {
      return null;
    }
    final nullIndex = members.indexWhere(_isNullOnly);
    if (nullIndex < 0) {
      return null;
    }
    final other = members[1 - nullIndex];
    if (_isNullOnly(other)) {
      return null;
    }
    other.isNullable = true;
    // A `$ref` member reads its target's fields; only keys next to the
    // `$ref` are its own.
    bool hasOwn(String key, Object? current) => other.referenceURI != null
        ? other.referenceSiblingKeys.contains(key)
        : current != null;
    void keep(String key, Object? value, Object? current, void Function() set) {
      if (value != null && !hasOwn(key, current)) {
        set();
        if (other.referenceURI != null) {
          other.referenceSiblingKeys.add(key);
        }
      }
    }

    bool? flag(bool? value) => (value ?? false) ? true : null;

    keep('description', schema.description, other.description, () {
      other.description = schema.description;
    });
    keep('default', schema.defaultValue, other.defaultValue, () {
      other.defaultValue = schema.defaultValue;
    });
    keep('deprecated', flag(schema.isDeprecated), flag(other.isDeprecated), () {
      other.isDeprecated = true;
    });
    keep('readOnly', flag(schema.isReadOnly), flag(other.isReadOnly), () {
      other.isReadOnly = true;
    });
    keep('writeOnly', flag(schema.isWriteOnly), flag(other.isWriteOnly), () {
      other.isWriteOnly = true;
    });
    return other;
  }

  static bool _isNullOnly(APISchemaObject schema) =>
      schema.referenceURI == null &&
      schema.types.isEmpty &&
      (schema.isNullable ?? false) &&
      schema.properties.isEmpty &&
      schema.allOf.isEmpty &&
      schema.anyOf.isEmpty &&
      schema.oneOf.isEmpty &&
      schema.enumerated == null;
}
