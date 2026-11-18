// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: prefer_initializing_formals, library_private_types_in_public_api, annotate_overrides, sort_unnamed_constructors_first, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:openapi_base/openapi_base.dart';
part 'json_values.openapi.g.dart';
part 'json_values.openapi.freezed.dart';

@JsonEnum(alwaysCreate: true)
enum Color {
  @JsonValue('red')
  red,
  @JsonValue('light-green')
  lightGreen,
}

extension ColorExt on Color {
  static Color fromName(String name) {
    return $enumDecode(_$ColorEnumMap, name);
  }

  String get jsonValue =>
      _$ColorEnumMap[this] ?? (() => throw StateError('Invalid enum.'))();
}

@freezed
sealed class Item with _$Item implements OpenApiContent {
  const Item._();

  const factory Item({
    @JsonKey(name: 'name', includeIfNull: false) required String name,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> jsonMap) =>
      _$ItemFromJson(jsonMap);

  @override
  String toString() => toJson().toString();
}

@JsonSerializable()
@ApiUuidJsonConverter()
class Bag implements OpenApiContent {
  Bag({this.label});

  factory Bag.fromJson(Map<String, dynamic> jsonMap) => _$BagFromJson(jsonMap)
    .._additionalProperties.addEntries(
      jsonMap.entries
          .where((e) => !const <String>{'label'}.contains(e.key))
          .map(
            (e) => MapEntry(
              e.key,
              ((v) => v == null ? null : (v as int))(e.value),
            ),
          ),
    );

  @JsonKey(name: 'label', includeIfNull: false)
  final String? label;

  final Map<String, int?> _additionalProperties = <String, int?>{};

  Map<String, dynamic> toJson() =>
      Map.from(_additionalProperties)..addAll(_$BagToJson(this));

  @override
  String toString() => toJson().toString();

  Map<String, int?> get additionalProperties => _additionalProperties;

  void operator []=(String key, int? value) =>
      _additionalProperties[key] = value;

  int? operator [](String key) => _additionalProperties[key];
}

@JsonSerializable()
@ApiUuidJsonConverter()
class Schedule implements OpenApiContent {
  Schedule();

  factory Schedule.fromJson(Map<String, dynamic> jsonMap) =>
      _$ScheduleFromJson(jsonMap)
        .._additionalProperties.addEntries(
          jsonMap.entries
              .where((e) => !const <String>{}.contains(e.key))
              .map((e) => MapEntry(e.key, DateTime.parse((e.value as String)))),
        );

  final Map<String, DateTime> _additionalProperties = <String, DateTime>{};

  Map<String, dynamic> toJson() => Map.from(
    _additionalProperties.map(
      (key, value) => MapEntry(key, value.toIso8601String()),
    ),
  )..addAll(_$ScheduleToJson(this));

  @override
  String toString() => toJson().toString();

  Map<String, DateTime> get additionalProperties => _additionalProperties;

  void operator []=(String key, DateTime value) =>
      _additionalProperties[key] = value;

  DateTime? operator [](String key) => _additionalProperties[key];
}

@JsonSerializable()
@ApiUuidJsonConverter()
class Palette implements OpenApiContent {
  Palette();

  factory Palette.fromJson(Map<String, dynamic> jsonMap) =>
      _$PaletteFromJson(jsonMap)
        .._additionalProperties.addEntries(
          jsonMap.entries
              .where((e) => !const <String>{}.contains(e.key))
              .map(
                (e) => MapEntry(
                  e.key,
                  (e.value as List<dynamic>)
                      .map((e) => ColorExt.fromName((e as String)))
                      .toList(),
                ),
              ),
        );

  final Map<String, List<Color>> _additionalProperties =
      <String, List<Color>>{};

  Map<String, dynamic> toJson() => Map.from(
    _additionalProperties.map(
      (key, value) => MapEntry(key, value.map((e) => e.jsonValue).toList()),
    ),
  )..addAll(_$PaletteToJson(this));

  @override
  String toString() => toJson().toString();

  Map<String, List<Color>> get additionalProperties => _additionalProperties;

  void operator []=(String key, List<Color> value) =>
      _additionalProperties[key] = value;

  List<Color>? operator [](String key) => _additionalProperties[key];
}

class GetCountResponse200 extends GetCountResponse
    implements OpenApiResponseBodyJsonValue {
  /// OK
  GetCountResponse200.response200(this.body)
    : status = 200,
      bodyJsonValue = body;

  @override
  final int status;

  final int body;

  @override
  final Object? bodyJsonValue;

  @override
  final OpenApiContentType contentType = OpenApiContentType.parse(
    'application/json',
  );

  @override
  Map<String, Object?> propertiesToString() => {
    'status': status,
    'body': body,
    'bodyJsonValue': bodyJsonValue,
    'contentType': contentType,
  };
}

sealed class GetCountResponse extends OpenApiResponse
    implements HasSuccessResponse<int> {
  GetCountResponse();

  /// OK
  factory GetCountResponse.response200(int body) =>
      GetCountResponse200.response200(body);

  R map<R>({
    required ResponseMap<GetCountResponse200, R> on200,
    ResponseMap<GetCountResponse, R>? onElse,
  }) {
    if (this is GetCountResponse200) {
      return on200((this as GetCountResponse200));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  OK
  @override
  int requireSuccess() {
    if (this is GetCountResponse200) {
      return (this as GetCountResponse200).body;
    } else {
      throw OpenApiRequireSuccessException(this);
    }
  }
}

class GetNamesResponse200 extends GetNamesResponse
    implements OpenApiResponseBodyJsonValue {
  /// OK
  GetNamesResponse200.response200(this.body)
    : status = 200,
      bodyJsonValue = body;

  @override
  final int status;

  final List<String> body;

  @override
  final Object? bodyJsonValue;

  @override
  final OpenApiContentType contentType = OpenApiContentType.parse(
    'application/json',
  );

  @override
  Map<String, Object?> propertiesToString() => {
    'status': status,
    'body': body,
    'bodyJsonValue': bodyJsonValue,
    'contentType': contentType,
  };
}

sealed class GetNamesResponse extends OpenApiResponse
    implements HasSuccessResponse<List<String>> {
  GetNamesResponse();

  /// OK
  factory GetNamesResponse.response200(List<String> body) =>
      GetNamesResponse200.response200(body);

  R map<R>({
    required ResponseMap<GetNamesResponse200, R> on200,
    ResponseMap<GetNamesResponse, R>? onElse,
  }) {
    if (this is GetNamesResponse200) {
      return on200((this as GetNamesResponse200));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  OK
  @override
  List<String> requireSuccess() {
    if (this is GetNamesResponse200) {
      return (this as GetNamesResponse200).body;
    } else {
      throw OpenApiRequireSuccessException(this);
    }
  }
}

class GetIdsResponse200 extends GetIdsResponse
    implements OpenApiResponseBodyJsonValue {
  /// OK
  GetIdsResponse200.response200(this.body) : status = 200, bodyJsonValue = body;

  @override
  final int status;

  final List<ApiUuid> body;

  @override
  final Object? bodyJsonValue;

  @override
  final OpenApiContentType contentType = OpenApiContentType.parse(
    'application/json',
  );

  @override
  Map<String, Object?> propertiesToString() => {
    'status': status,
    'body': body,
    'bodyJsonValue': bodyJsonValue,
    'contentType': contentType,
  };
}

sealed class GetIdsResponse extends OpenApiResponse
    implements HasSuccessResponse<List<ApiUuid>> {
  GetIdsResponse();

  /// OK
  factory GetIdsResponse.response200(List<ApiUuid> body) =>
      GetIdsResponse200.response200(body);

  R map<R>({
    required ResponseMap<GetIdsResponse200, R> on200,
    ResponseMap<GetIdsResponse, R>? onElse,
  }) {
    if (this is GetIdsResponse200) {
      return on200((this as GetIdsResponse200));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  OK
  @override
  List<ApiUuid> requireSuccess() {
    if (this is GetIdsResponse200) {
      return (this as GetIdsResponse200).body;
    } else {
      throw OpenApiRequireSuccessException(this);
    }
  }
}

class EchoColorsResponse200 extends EchoColorsResponse
    implements OpenApiResponseBodyJsonValue {
  /// The request body.
  EchoColorsResponse200.response200(this.body)
    : status = 200,
      bodyJsonValue = body.map((e) => e.jsonValue).toList();

  @override
  final int status;

  final List<Color> body;

  @override
  final Object? bodyJsonValue;

  @override
  final OpenApiContentType contentType = OpenApiContentType.parse(
    'application/json',
  );

  @override
  Map<String, Object?> propertiesToString() => {
    'status': status,
    'body': body,
    'bodyJsonValue': bodyJsonValue,
    'contentType': contentType,
  };
}

sealed class EchoColorsResponse extends OpenApiResponse
    implements HasSuccessResponse<List<Color>> {
  EchoColorsResponse();

  /// The request body.
  factory EchoColorsResponse.response200(List<Color> body) =>
      EchoColorsResponse200.response200(body);

  R map<R>({
    required ResponseMap<EchoColorsResponse200, R> on200,
    ResponseMap<EchoColorsResponse, R>? onElse,
  }) {
    if (this is EchoColorsResponse200) {
      return on200((this as EchoColorsResponse200));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  The request body.
  @override
  List<Color> requireSuccess() {
    if (this is EchoColorsResponse200) {
      return (this as EchoColorsResponse200).body;
    } else {
      throw OpenApiRequireSuccessException(this);
    }
  }
}

class EchoDatesResponse200 extends EchoDatesResponse
    implements OpenApiResponseBodyJsonValue {
  /// The request body.
  EchoDatesResponse200.response200(this.body)
    : status = 200,
      bodyJsonValue = body.map((e) => e.toIso8601String()).toList();

  @override
  final int status;

  final List<DateTime> body;

  @override
  final Object? bodyJsonValue;

  @override
  final OpenApiContentType contentType = OpenApiContentType.parse(
    'application/json',
  );

  @override
  Map<String, Object?> propertiesToString() => {
    'status': status,
    'body': body,
    'bodyJsonValue': bodyJsonValue,
    'contentType': contentType,
  };
}

sealed class EchoDatesResponse extends OpenApiResponse
    implements HasSuccessResponse<List<DateTime>> {
  EchoDatesResponse();

  /// The request body.
  factory EchoDatesResponse.response200(List<DateTime> body) =>
      EchoDatesResponse200.response200(body);

  R map<R>({
    required ResponseMap<EchoDatesResponse200, R> on200,
    ResponseMap<EchoDatesResponse, R>? onElse,
  }) {
    if (this is EchoDatesResponse200) {
      return on200((this as EchoDatesResponse200));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  The request body.
  @override
  List<DateTime> requireSuccess() {
    if (this is EchoDatesResponse200) {
      return (this as EchoDatesResponse200).body;
    } else {
      throw OpenApiRequireSuccessException(this);
    }
  }
}

class EchoItemsResponse200 extends EchoItemsResponse
    implements OpenApiResponseBodyJsonValue {
  /// The request body.
  EchoItemsResponse200.response200(this.body)
    : status = 200,
      bodyJsonValue = body;

  @override
  final int status;

  final List<Item> body;

  @override
  final Object? bodyJsonValue;

  @override
  final OpenApiContentType contentType = OpenApiContentType.parse(
    'application/json',
  );

  @override
  Map<String, Object?> propertiesToString() => {
    'status': status,
    'body': body,
    'bodyJsonValue': bodyJsonValue,
    'contentType': contentType,
  };
}

sealed class EchoItemsResponse extends OpenApiResponse
    implements HasSuccessResponse<List<Item>> {
  EchoItemsResponse();

  /// The request body.
  factory EchoItemsResponse.response200(List<Item> body) =>
      EchoItemsResponse200.response200(body);

  R map<R>({
    required ResponseMap<EchoItemsResponse200, R> on200,
    ResponseMap<EchoItemsResponse, R>? onElse,
  }) {
    if (this is EchoItemsResponse200) {
      return on200((this as EchoItemsResponse200));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  The request body.
  @override
  List<Item> requireSuccess() {
    if (this is EchoItemsResponse200) {
      return (this as EchoItemsResponse200).body;
    } else {
      throw OpenApiRequireSuccessException(this);
    }
  }
}

class GetSparseResponse200 extends GetSparseResponse
    implements OpenApiResponseBodyJsonValue {
  /// OK
  GetSparseResponse200.response200(this.body)
    : status = 200,
      bodyJsonValue = body;

  @override
  final int status;

  final List<int?> body;

  @override
  final Object? bodyJsonValue;

  @override
  final OpenApiContentType contentType = OpenApiContentType.parse(
    'application/json',
  );

  @override
  Map<String, Object?> propertiesToString() => {
    'status': status,
    'body': body,
    'bodyJsonValue': bodyJsonValue,
    'contentType': contentType,
  };
}

sealed class GetSparseResponse extends OpenApiResponse
    implements HasSuccessResponse<List<int?>> {
  GetSparseResponse();

  /// OK
  factory GetSparseResponse.response200(List<int?> body) =>
      GetSparseResponse200.response200(body);

  R map<R>({
    required ResponseMap<GetSparseResponse200, R> on200,
    ResponseMap<GetSparseResponse, R>? onElse,
  }) {
    if (this is GetSparseResponse200) {
      return on200((this as GetSparseResponse200));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  OK
  @override
  List<int?> requireSuccess() {
    if (this is GetSparseResponse200) {
      return (this as GetSparseResponse200).body;
    } else {
      throw OpenApiRequireSuccessException(this);
    }
  }
}

class GetMatrixResponse200 extends GetMatrixResponse
    implements OpenApiResponseBodyJsonValue {
  /// OK
  GetMatrixResponse200.response200(this.body)
    : status = 200,
      bodyJsonValue = body;

  @override
  final int status;

  final List<List<num>> body;

  @override
  final Object? bodyJsonValue;

  @override
  final OpenApiContentType contentType = OpenApiContentType.parse(
    'application/json',
  );

  @override
  Map<String, Object?> propertiesToString() => {
    'status': status,
    'body': body,
    'bodyJsonValue': bodyJsonValue,
    'contentType': contentType,
  };
}

sealed class GetMatrixResponse extends OpenApiResponse
    implements HasSuccessResponse<List<List<num>>> {
  GetMatrixResponse();

  /// OK
  factory GetMatrixResponse.response200(List<List<num>> body) =>
      GetMatrixResponse200.response200(body);

  R map<R>({
    required ResponseMap<GetMatrixResponse200, R> on200,
    ResponseMap<GetMatrixResponse, R>? onElse,
  }) {
    if (this is GetMatrixResponse200) {
      return on200((this as GetMatrixResponse200));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  OK
  @override
  List<List<num>> requireSuccess() {
    if (this is GetMatrixResponse200) {
      return (this as GetMatrixResponse200).body;
    } else {
      throw OpenApiRequireSuccessException(this);
    }
  }
}

class GetMaybeResponse200 extends GetMaybeResponse
    implements OpenApiResponseBodyJsonValue {
  /// A date, or null if `empty`.
  GetMaybeResponse200.response200(this.body)
    : status = 200,
      bodyJsonValue = body?.toIso8601String();

  @override
  final int status;

  final DateTime? body;

  @override
  final Object? bodyJsonValue;

  @override
  final OpenApiContentType contentType = OpenApiContentType.parse(
    'application/json',
  );

  @override
  Map<String, Object?> propertiesToString() => {
    'status': status,
    'body': body,
    'bodyJsonValue': bodyJsonValue,
    'contentType': contentType,
  };
}

sealed class GetMaybeResponse extends OpenApiResponse
    implements HasSuccessResponse<DateTime?> {
  GetMaybeResponse();

  /// A date, or null if `empty`.
  factory GetMaybeResponse.response200(DateTime? body) =>
      GetMaybeResponse200.response200(body);

  R map<R>({
    required ResponseMap<GetMaybeResponse200, R> on200,
    ResponseMap<GetMaybeResponse, R>? onElse,
  }) {
    if (this is GetMaybeResponse200) {
      return on200((this as GetMaybeResponse200));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  A date, or null if `empty`.
  @override
  DateTime? requireSuccess() {
    if (this is GetMaybeResponse200) {
      return (this as GetMaybeResponse200).body;
    } else {
      throw OpenApiRequireSuccessException(this);
    }
  }
}

class GetBagResponse200 extends GetBagResponse
    implements OpenApiResponseBodyJson {
  /// OK
  GetBagResponse200.response200(this.body)
    : status = 200,
      bodyJson = body.toJson();

  @override
  final int status;

  final Bag body;

  @override
  final Map<String, dynamic> bodyJson;

  @override
  final OpenApiContentType contentType = OpenApiContentType.parse(
    'application/json',
  );

  @override
  Map<String, Object?> propertiesToString() => {
    'status': status,
    'body': body,
    'bodyJson': bodyJson,
    'contentType': contentType,
  };
}

sealed class GetBagResponse extends OpenApiResponse
    implements HasSuccessResponse<Bag> {
  GetBagResponse();

  /// OK
  factory GetBagResponse.response200(Bag body) =>
      GetBagResponse200.response200(body);

  R map<R>({
    required ResponseMap<GetBagResponse200, R> on200,
    ResponseMap<GetBagResponse, R>? onElse,
  }) {
    if (this is GetBagResponse200) {
      return on200((this as GetBagResponse200));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  OK
  @override
  Bag requireSuccess() {
    if (this is GetBagResponse200) {
      return (this as GetBagResponse200).body;
    } else {
      throw OpenApiRequireSuccessException(this);
    }
  }
}

class GetScheduleResponse200 extends GetScheduleResponse
    implements OpenApiResponseBodyJson {
  /// OK
  GetScheduleResponse200.response200(this.body)
    : status = 200,
      bodyJson = body.toJson();

  @override
  final int status;

  final Schedule body;

  @override
  final Map<String, dynamic> bodyJson;

  @override
  final OpenApiContentType contentType = OpenApiContentType.parse(
    'application/json',
  );

  @override
  Map<String, Object?> propertiesToString() => {
    'status': status,
    'body': body,
    'bodyJson': bodyJson,
    'contentType': contentType,
  };
}

sealed class GetScheduleResponse extends OpenApiResponse
    implements HasSuccessResponse<Schedule> {
  GetScheduleResponse();

  /// OK
  factory GetScheduleResponse.response200(Schedule body) =>
      GetScheduleResponse200.response200(body);

  R map<R>({
    required ResponseMap<GetScheduleResponse200, R> on200,
    ResponseMap<GetScheduleResponse, R>? onElse,
  }) {
    if (this is GetScheduleResponse200) {
      return on200((this as GetScheduleResponse200));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  OK
  @override
  Schedule requireSuccess() {
    if (this is GetScheduleResponse200) {
      return (this as GetScheduleResponse200).body;
    } else {
      throw OpenApiRequireSuccessException(this);
    }
  }
}

class GetPaletteResponse200 extends GetPaletteResponse
    implements OpenApiResponseBodyJson {
  /// OK
  GetPaletteResponse200.response200(this.body)
    : status = 200,
      bodyJson = body.toJson();

  @override
  final int status;

  final Palette body;

  @override
  final Map<String, dynamic> bodyJson;

  @override
  final OpenApiContentType contentType = OpenApiContentType.parse(
    'application/json',
  );

  @override
  Map<String, Object?> propertiesToString() => {
    'status': status,
    'body': body,
    'bodyJson': bodyJson,
    'contentType': contentType,
  };
}

sealed class GetPaletteResponse extends OpenApiResponse
    implements HasSuccessResponse<Palette> {
  GetPaletteResponse();

  /// OK
  factory GetPaletteResponse.response200(Palette body) =>
      GetPaletteResponse200.response200(body);

  R map<R>({
    required ResponseMap<GetPaletteResponse200, R> on200,
    ResponseMap<GetPaletteResponse, R>? onElse,
  }) {
    if (this is GetPaletteResponse200) {
      return on200((this as GetPaletteResponse200));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  OK
  @override
  Palette requireSuccess() {
    if (this is GetPaletteResponse200) {
      return (this as GetPaletteResponse200).body;
    } else {
      throw OpenApiRequireSuccessException(this);
    }
  }
}

abstract class JsonValuesApi implements ApiEndpoint {
  /// get: /count
  Future<GetCountResponse> getCount();

  /// get: /names
  Future<GetNamesResponse> getNames();

  /// get: /ids
  Future<GetIdsResponse> getIds();

  /// post: /colors
  Future<EchoColorsResponse> echoColors(List<Color> body);

  /// post: /dates
  Future<EchoDatesResponse> echoDates(List<DateTime> body);

  /// post: /items
  Future<EchoItemsResponse> echoItems(List<Item> body);

  /// get: /sparse
  Future<GetSparseResponse> getSparse();

  /// get: /matrix
  Future<GetMatrixResponse> getMatrix();

  /// get: /maybe
  Future<GetMaybeResponse> getMaybe({required bool empty});

  /// get: /bag
  Future<GetBagResponse> getBag();

  /// get: /schedule
  Future<GetScheduleResponse> getSchedule();

  /// get: /palette
  Future<GetPaletteResponse> getPalette();
}

abstract class JsonValuesApiClient implements OpenApiClient {
  factory JsonValuesApiClient(
    Uri baseUri,
    OpenApiRequestSender requestSender,
  ) => _JsonValuesApiClientImpl._(baseUri, requestSender);

  OpenApiClientRequest createGetCountRequest();

  /// get: /count
  ///
  Future<GetCountResponse> getCount();
  OpenApiClientRequest createGetNamesRequest();

  /// get: /names
  ///
  Future<GetNamesResponse> getNames();
  OpenApiClientRequest createGetIdsRequest();

  /// get: /ids
  ///
  Future<GetIdsResponse> getIds();
  OpenApiClientRequest createEchoColorsRequest(List<Color> body);

  /// post: /colors
  ///
  Future<EchoColorsResponse> echoColors(List<Color> body);
  OpenApiClientRequest createEchoDatesRequest(List<DateTime> body);

  /// post: /dates
  ///
  Future<EchoDatesResponse> echoDates(List<DateTime> body);
  OpenApiClientRequest createEchoItemsRequest(List<Item> body);

  /// post: /items
  ///
  Future<EchoItemsResponse> echoItems(List<Item> body);
  OpenApiClientRequest createGetSparseRequest();

  /// get: /sparse
  ///
  Future<GetSparseResponse> getSparse();
  OpenApiClientRequest createGetMatrixRequest();

  /// get: /matrix
  ///
  Future<GetMatrixResponse> getMatrix();
  OpenApiClientRequest createGetMaybeRequest({required bool empty});

  /// get: /maybe
  ///
  Future<GetMaybeResponse> getMaybe({required bool empty});
  OpenApiClientRequest createGetBagRequest();

  /// get: /bag
  ///
  Future<GetBagResponse> getBag();
  OpenApiClientRequest createGetScheduleRequest();

  /// get: /schedule
  ///
  Future<GetScheduleResponse> getSchedule();
  OpenApiClientRequest createGetPaletteRequest();

  /// get: /palette
  ///
  Future<GetPaletteResponse> getPalette();
}

class _JsonValuesApiClientImpl extends OpenApiClientBase
    implements JsonValuesApiClient {
  _JsonValuesApiClientImpl._(this.baseUri, this.requestSender);

  @override
  final Uri baseUri;

  @override
  final OpenApiRequestSender requestSender;

  @override
  OpenApiClientRequest createGetCountRequest() {
    final request = OpenApiClientRequest('get', '/count', []);
    return request;
  }

  /// get: /count
  ///
  @override
  Future<GetCountResponse> getCount() async {
    final request = createGetCountRequest();
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          GetCountResponse200.response200(
            (await response.responseBodyJsonDynamic() as int),
          ),
    });
  }

  @override
  OpenApiClientRequest createGetNamesRequest() {
    final request = OpenApiClientRequest('get', '/names', []);
    return request;
  }

  /// get: /names
  ///
  @override
  Future<GetNamesResponse> getNames() async {
    final request = createGetNamesRequest();
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          GetNamesResponse200.response200(
            (await response.responseBodyJsonDynamic() as List<dynamic>)
                .map((e) => (e as String))
                .toList(),
          ),
    });
  }

  @override
  OpenApiClientRequest createGetIdsRequest() {
    final request = OpenApiClientRequest('get', '/ids', []);
    return request;
  }

  /// get: /ids
  ///
  @override
  Future<GetIdsResponse> getIds() async {
    final request = createGetIdsRequest();
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          GetIdsResponse200.response200(
            (await response.responseBodyJsonDynamic() as List<dynamic>)
                .map((e) => ApiUuid.parse((e as String)))
                .toList(),
          ),
    });
  }

  @override
  OpenApiClientRequest createEchoColorsRequest(List<Color> body) {
    final request = OpenApiClientRequest('post', '/colors', []);
    request.setHeader('content-type', 'application/json');
    request.setBody(
      OpenApiClientRequestBodyJson(body.map((e) => e.jsonValue).toList()),
    );
    return request;
  }

  /// post: /colors
  ///
  @override
  Future<EchoColorsResponse> echoColors(List<Color> body) async {
    final request = createEchoColorsRequest(body);
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          EchoColorsResponse200.response200(
            (await response.responseBodyJsonDynamic() as List<dynamic>)
                .map((e) => ColorExt.fromName((e as String)))
                .toList(),
          ),
    });
  }

  @override
  OpenApiClientRequest createEchoDatesRequest(List<DateTime> body) {
    final request = OpenApiClientRequest('post', '/dates', []);
    request.setHeader('content-type', 'application/json');
    request.setBody(
      OpenApiClientRequestBodyJson(
        body.map((e) => e.toIso8601String()).toList(),
      ),
    );
    return request;
  }

  /// post: /dates
  ///
  @override
  Future<EchoDatesResponse> echoDates(List<DateTime> body) async {
    final request = createEchoDatesRequest(body);
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          EchoDatesResponse200.response200(
            (await response.responseBodyJsonDynamic() as List<dynamic>)
                .map((e) => DateTime.parse((e as String)))
                .toList(),
          ),
    });
  }

  @override
  OpenApiClientRequest createEchoItemsRequest(List<Item> body) {
    final request = OpenApiClientRequest('post', '/items', []);
    request.setHeader('content-type', 'application/json');
    request.setBody(OpenApiClientRequestBodyJson(body));
    return request;
  }

  /// post: /items
  ///
  @override
  Future<EchoItemsResponse> echoItems(List<Item> body) async {
    final request = createEchoItemsRequest(body);
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          EchoItemsResponse200.response200(
            (await response.responseBodyJsonDynamic() as List<dynamic>)
                .map((e) => Item.fromJson((e as Map<String, dynamic>)))
                .toList(),
          ),
    });
  }

  @override
  OpenApiClientRequest createGetSparseRequest() {
    final request = OpenApiClientRequest('get', '/sparse', []);
    return request;
  }

  /// get: /sparse
  ///
  @override
  Future<GetSparseResponse> getSparse() async {
    final request = createGetSparseRequest();
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          GetSparseResponse200.response200(
            (await response.responseBodyJsonDynamic() as List<dynamic>)
                .map((e) => e == null ? null : (e as int))
                .toList(),
          ),
    });
  }

  @override
  OpenApiClientRequest createGetMatrixRequest() {
    final request = OpenApiClientRequest('get', '/matrix', []);
    return request;
  }

  /// get: /matrix
  ///
  @override
  Future<GetMatrixResponse> getMatrix() async {
    final request = createGetMatrixRequest();
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          GetMatrixResponse200.response200(
            (await response.responseBodyJsonDynamic() as List<dynamic>)
                .map(
                  (e) => (e as List<dynamic>).map((e) => (e as num)).toList(),
                )
                .toList(),
          ),
    });
  }

  @override
  OpenApiClientRequest createGetMaybeRequest({required bool empty}) {
    final request = OpenApiClientRequest('get', '/maybe', []);
    request.addQueryParameter('empty', encodeBool(empty));
    return request;
  }

  /// get: /maybe
  ///
  @override
  Future<GetMaybeResponse> getMaybe({required bool empty}) async {
    final request = createGetMaybeRequest(empty: empty);
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          GetMaybeResponse200.response200(
            ((v) => v == null ? null : DateTime.parse((v as String)))(
              await response.responseBodyJsonDynamic(),
            ),
          ),
    });
  }

  @override
  OpenApiClientRequest createGetBagRequest() {
    final request = OpenApiClientRequest('get', '/bag', []);
    return request;
  }

  /// get: /bag
  ///
  @override
  Future<GetBagResponse> getBag() async {
    final request = createGetBagRequest();
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          GetBagResponse200.response200(
            Bag.fromJson(await response.responseBodyJson()),
          ),
    });
  }

  @override
  OpenApiClientRequest createGetScheduleRequest() {
    final request = OpenApiClientRequest('get', '/schedule', []);
    return request;
  }

  /// get: /schedule
  ///
  @override
  Future<GetScheduleResponse> getSchedule() async {
    final request = createGetScheduleRequest();
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          GetScheduleResponse200.response200(
            Schedule.fromJson(await response.responseBodyJson()),
          ),
    });
  }

  @override
  OpenApiClientRequest createGetPaletteRequest() {
    final request = OpenApiClientRequest('get', '/palette', []);
    return request;
  }

  /// get: /palette
  ///
  @override
  Future<GetPaletteResponse> getPalette() async {
    final request = createGetPaletteRequest();
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          GetPaletteResponse200.response200(
            Palette.fromJson(await response.responseBodyJson()),
          ),
    });
  }
}

class JsonValuesApiUrlResolve with OpenApiUrlEncodeMixin {
  /// get: /count
  ///
  OpenApiClientRequest getCount() {
    final request = OpenApiClientRequest('get', '/count', []);
    return request;
  }

  /// get: /names
  ///
  OpenApiClientRequest getNames() {
    final request = OpenApiClientRequest('get', '/names', []);
    return request;
  }

  /// get: /ids
  ///
  OpenApiClientRequest getIds() {
    final request = OpenApiClientRequest('get', '/ids', []);
    return request;
  }

  /// post: /colors
  ///
  OpenApiClientRequest echoColors() {
    final request = OpenApiClientRequest('post', '/colors', []);
    return request;
  }

  /// post: /dates
  ///
  OpenApiClientRequest echoDates() {
    final request = OpenApiClientRequest('post', '/dates', []);
    return request;
  }

  /// post: /items
  ///
  OpenApiClientRequest echoItems() {
    final request = OpenApiClientRequest('post', '/items', []);
    return request;
  }

  /// get: /sparse
  ///
  OpenApiClientRequest getSparse() {
    final request = OpenApiClientRequest('get', '/sparse', []);
    return request;
  }

  /// get: /matrix
  ///
  OpenApiClientRequest getMatrix() {
    final request = OpenApiClientRequest('get', '/matrix', []);
    return request;
  }

  /// get: /maybe
  ///
  OpenApiClientRequest getMaybe({required bool empty}) {
    final request = OpenApiClientRequest('get', '/maybe', []);
    request.addQueryParameter('empty', encodeBool(empty));
    return request;
  }

  /// get: /bag
  ///
  OpenApiClientRequest getBag() {
    final request = OpenApiClientRequest('get', '/bag', []);
    return request;
  }

  /// get: /schedule
  ///
  OpenApiClientRequest getSchedule() {
    final request = OpenApiClientRequest('get', '/schedule', []);
    return request;
  }

  /// get: /palette
  ///
  OpenApiClientRequest getPalette() {
    final request = OpenApiClientRequest('get', '/palette', []);
    return request;
  }
}

class JsonValuesApiRouter extends OpenApiServerRouterBase {
  JsonValuesApiRouter(this.impl);

  final ApiEndpointProvider<JsonValuesApi> impl;

  @override
  void configure() {
    addRoute('/count', 'get', (OpenApiRequest request) async {
      return await impl.invoke(
        request,
        (JsonValuesApi impl) async => impl.getCount(),
      );
    }, security: []);
    addRoute('/names', 'get', (OpenApiRequest request) async {
      return await impl.invoke(
        request,
        (JsonValuesApi impl) async => impl.getNames(),
      );
    }, security: []);
    addRoute('/ids', 'get', (OpenApiRequest request) async {
      return await impl.invoke(
        request,
        (JsonValuesApi impl) async => impl.getIds(),
      );
    }, security: []);
    addRoute('/colors', 'post', (OpenApiRequest request) async {
      return await impl.invoke(
        request,
        (JsonValuesApi impl) async => impl.echoColors(
          (await request.readJsonBodyDynamic() as List<dynamic>)
              .map((e) => ColorExt.fromName((e as String)))
              .toList(),
        ),
      );
    }, security: []);
    addRoute('/dates', 'post', (OpenApiRequest request) async {
      return await impl.invoke(
        request,
        (JsonValuesApi impl) async => impl.echoDates(
          (await request.readJsonBodyDynamic() as List<dynamic>)
              .map((e) => DateTime.parse((e as String)))
              .toList(),
        ),
      );
    }, security: []);
    addRoute('/items', 'post', (OpenApiRequest request) async {
      return await impl.invoke(
        request,
        (JsonValuesApi impl) async => impl.echoItems(
          (await request.readJsonBodyDynamic() as List<dynamic>)
              .map((e) => Item.fromJson((e as Map<String, dynamic>)))
              .toList(),
        ),
      );
    }, security: []);
    addRoute('/sparse', 'get', (OpenApiRequest request) async {
      return await impl.invoke(
        request,
        (JsonValuesApi impl) async => impl.getSparse(),
      );
    }, security: []);
    addRoute('/matrix', 'get', (OpenApiRequest request) async {
      return await impl.invoke(
        request,
        (JsonValuesApi impl) async => impl.getMatrix(),
      );
    }, security: []);
    addRoute('/maybe', 'get', (OpenApiRequest request) async {
      return await impl.invoke(
        request,
        (JsonValuesApi impl) async => impl.getMaybe(
          empty: paramRequired(
            name: 'empty',
            value: request.queryParameter('empty'),
            decode: (value) => paramToBool(value),
          ),
        ),
      );
    }, security: []);
    addRoute('/bag', 'get', (OpenApiRequest request) async {
      return await impl.invoke(
        request,
        (JsonValuesApi impl) async => impl.getBag(),
      );
    }, security: []);
    addRoute('/schedule', 'get', (OpenApiRequest request) async {
      return await impl.invoke(
        request,
        (JsonValuesApi impl) async => impl.getSchedule(),
      );
    }, security: []);
    addRoute('/palette', 'get', (OpenApiRequest request) async {
      return await impl.invoke(
        request,
        (JsonValuesApi impl) async => impl.getPalette(),
      );
    }, security: []);
  }
}

class SecuritySchemes {}
