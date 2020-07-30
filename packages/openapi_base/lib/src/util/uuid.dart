import 'package:json_annotation/json_annotation.dart';
import 'package:uuid/uuid.dart' as uuid;
import 'package:uuid/uuid_util.dart';

class ApiUuid {
  ApiUuid._(this._uuid) : assert(_isUuid(_uuid));
  ApiUuid.secure() : this._(_secureUuidGenerator.v4());
  ApiUuid.parse(String uuid) : this._(uuid);

  static final _secureUuidGenerator =
      uuid.Uuid(options: <String, dynamic>{'grng': UuidUtil.cryptoRNG});
  static final _validate = RegExp(
      r'^[0-9A-F]{8}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{12}$',
      caseSensitive: false);

  static bool _isUuid(String _uuid) {
    return _validate.hasMatch(_uuid);
  }

  final String _uuid;

  @override
  String toString() => _uuid;
}

class ApiUuidJsonConverter implements JsonConverter<ApiUuid, String> {
  const ApiUuidJsonConverter();

  @override
  ApiUuid fromJson(String json) => ApiUuid.parse(json);

  @override
  String toJson(ApiUuid object) => object?.toString();
}
