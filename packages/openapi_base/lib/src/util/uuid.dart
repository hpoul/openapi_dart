import 'package:json_annotation/json_annotation.dart';
import 'package:uuid/data.dart';
import 'package:uuid/rng.dart';
import 'package:uuid/uuid.dart' as uuid;

@ApiUuidJsonConverter()
class ApiUuid {
  ApiUuid._(this._uuid) : assert(_isUuid(_uuid));
  ApiUuid.secure() : this._(_secureUuidGenerator.v4());

  /// Parse the given uuid. This is the reverse of [encodeToString].
  ApiUuid.parse(String uuid) : this._(uuid);

  static final _secureUuidGenerator =
      uuid.Uuid(goptions: GlobalOptions(CryptoRNG()));
  static final _validate = RegExp(
      r'^[0-9A-F]{8}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{12}$',
      caseSensitive: false);

  static bool _isUuid(String uuid) {
    return _validate.hasMatch(uuid);
  }

  final String _uuid;

  /// Encodes UUID into a [String]. Opposite of [ApiUuid.parse].
  String encodeToString() => _uuid;

  /// String representation for debugging.
  /// Use [encodeToString] to use for transmission.
  @override
  String toString() => _uuid;

  @override
  bool operator ==(Object other) => other is ApiUuid && _uuid == other._uuid;

  @override
  int get hashCode => _uuid.hashCode;
}

class ApiUuidJsonConverter implements JsonConverter<ApiUuid, String> {
  const ApiUuidJsonConverter();

  @override
  ApiUuid fromJson(String json) => ApiUuid.parse(json);

  @override
  String toJson(ApiUuid object) => object.encodeToString();
}
