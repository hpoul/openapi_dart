// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: prefer_initializing_formals, library_private_types_in_public_api, annotate_overrides, sort_unnamed_constructors_first, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:openapi_base/openapi_base.dart';
part 'oai-uspto.openapi.g.dart';
part 'oai-uspto.openapi.freezed.dart';

@freezed
sealed class DataSetListApis with _$DataSetListApis implements OpenApiContent {
  const DataSetListApis._();

  const factory DataSetListApis({
    @JsonKey(name: 'apiKey', includeIfNull: false) String? apiKey,
    @JsonKey(name: 'apiVersionNumber', includeIfNull: false)
    String? apiVersionNumber,
    @JsonKey(name: 'apiUrl', includeIfNull: false) String? apiUrl,
    @JsonKey(name: 'apiDocumentationUrl', includeIfNull: false)
    String? apiDocumentationUrl,
  }) = _DataSetListApis;

  factory DataSetListApis.fromJson(Map<String, dynamic> jsonMap) =>
      _$DataSetListApisFromJson(jsonMap);

  @override
  String toString() => toJson().toString();
}

@freezed
sealed class DataSetList with _$DataSetList implements OpenApiContent {
  const DataSetList._();

  const factory DataSetList({
    @JsonKey(name: 'total', includeIfNull: false) int? total,
    @JsonKey(name: 'apis', includeIfNull: false) List<DataSetListApis>? apis,
  }) = _DataSetList;

  factory DataSetList.fromJson(Map<String, dynamic> jsonMap) =>
      _$DataSetListFromJson(jsonMap);

  @override
  String toString() => toJson().toString();
}

class ListDataSetsResponse200 extends ListDataSetsResponse
    implements OpenApiResponseBodyJson {
  /// Returns a list of data sets
  ListDataSetsResponse200.response200(this.body)
    : status = 200,
      bodyJson = body.toJson();

  @override
  final int status;

  final DataSetList body;

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

sealed class ListDataSetsResponse extends OpenApiResponse
    implements HasSuccessResponse<DataSetList> {
  ListDataSetsResponse();

  /// Returns a list of data sets
  factory ListDataSetsResponse.response200(DataSetList body) =>
      ListDataSetsResponse200.response200(body);

  R map<R>({
    required ResponseMap<ListDataSetsResponse200, R> on200,
    ResponseMap<ListDataSetsResponse, R>? onElse,
  }) {
    if (this is ListDataSetsResponse200) {
      return on200((this as ListDataSetsResponse200));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  Returns a list of data sets
  @override
  DataSetList requireSuccess() {
    if (this is ListDataSetsResponse200) {
      return (this as ListDataSetsResponse200).body;
    } else {
      throw OpenApiRequireSuccessException(this);
    }
  }
}

class ListSearchableFieldsResponse200 extends ListSearchableFieldsResponse
    implements OpenApiResponseBodyJsonValue {
  /// The dataset API for the given version is found and it is accessible to consume.
  ListSearchableFieldsResponse200.response200(this.body)
    : status = 200,
      bodyJsonValue = body;

  @override
  final int status;

  final String body;

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

class ListSearchableFieldsResponse404 extends ListSearchableFieldsResponse
    implements OpenApiResponseBodyJsonValue {
  /// The combination of dataset name and version is not found in the system or it is not published yet to be consumed by public.
  ListSearchableFieldsResponse404.response404(this.body)
    : status = 404,
      bodyJsonValue = body;

  @override
  final int status;

  final String body;

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

sealed class ListSearchableFieldsResponse extends OpenApiResponse
    implements HasSuccessResponse<String> {
  ListSearchableFieldsResponse();

  /// The dataset API for the given version is found and it is accessible to consume.
  factory ListSearchableFieldsResponse.response200(String body) =>
      ListSearchableFieldsResponse200.response200(body);

  /// The combination of dataset name and version is not found in the system or it is not published yet to be consumed by public.
  factory ListSearchableFieldsResponse.response404(String body) =>
      ListSearchableFieldsResponse404.response404(body);

  R map<R>({
    required ResponseMap<ListSearchableFieldsResponse200, R> on200,
    required ResponseMap<ListSearchableFieldsResponse404, R> on404,
    ResponseMap<ListSearchableFieldsResponse, R>? onElse,
  }) {
    if (this is ListSearchableFieldsResponse200) {
      return on200((this as ListSearchableFieldsResponse200));
    } else if (this is ListSearchableFieldsResponse404) {
      return on404((this as ListSearchableFieldsResponse404));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  The dataset API for the given version is found and it is accessible to consume.
  @override
  String requireSuccess() {
    if (this is ListSearchableFieldsResponse200) {
      return (this as ListSearchableFieldsResponse200).body;
    } else {
      throw OpenApiRequireSuccessException(this);
    }
  }
}

@freezed
sealed class PerformSearchResponseBody200AddProp
    with _$PerformSearchResponseBody200AddProp
    implements OpenApiContent {
  const PerformSearchResponseBody200AddProp._();

  const factory PerformSearchResponseBody200AddProp() =
      _PerformSearchResponseBody200AddProp;

  factory PerformSearchResponseBody200AddProp.fromJson(
    Map<String, dynamic> jsonMap,
  ) => _$PerformSearchResponseBody200AddPropFromJson(jsonMap);

  @override
  String toString() => toJson().toString();
}

@JsonSerializable()
@ApiUuidJsonConverter()
class PerformSearchResponseBody200 implements OpenApiContent {
  PerformSearchResponseBody200();

  factory PerformSearchResponseBody200.fromJson(Map<String, dynamic> jsonMap) =>
      _$PerformSearchResponseBody200FromJson(jsonMap)
        .._additionalProperties.addEntries(
          jsonMap.entries
              .where((e) => !const <String>{}.contains(e.key))
              .map(
                (e) => MapEntry(
                  e.key,
                  PerformSearchResponseBody200AddProp.fromJson(
                    (e.value as Map<String, dynamic>),
                  ),
                ),
              ),
        );

  final Map<String, PerformSearchResponseBody200AddProp> _additionalProperties =
      <String, PerformSearchResponseBody200AddProp>{};

  Map<String, dynamic> toJson() =>
      Map.from(_additionalProperties)
        ..addAll(_$PerformSearchResponseBody200ToJson(this));

  @override
  String toString() => toJson().toString();

  Map<String, PerformSearchResponseBody200AddProp> get additionalProperties =>
      _additionalProperties;

  void operator []=(String key, PerformSearchResponseBody200AddProp value) =>
      _additionalProperties[key] = value;

  PerformSearchResponseBody200AddProp? operator [](String key) =>
      _additionalProperties[key];
}

class PerformSearchResponse200 extends PerformSearchResponse
    implements OpenApiResponseBodyJsonValue {
  /// successful operation
  PerformSearchResponse200.response200(this.body)
    : status = 200,
      bodyJsonValue = body;

  @override
  final int status;

  final List<PerformSearchResponseBody200> body;

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

class PerformSearchResponse404 extends PerformSearchResponse {
  /// No matching record found for the given criteria.
  PerformSearchResponse404.response404() : status = 404;

  @override
  final int status;

  @override
  final OpenApiContentType? contentType = null;

  @override
  Map<String, Object?> propertiesToString() => {
    'status': status,
    'contentType': contentType,
  };
}

sealed class PerformSearchResponse extends OpenApiResponse
    implements HasSuccessResponse<List<PerformSearchResponseBody200>> {
  PerformSearchResponse();

  /// successful operation
  factory PerformSearchResponse.response200(
    List<PerformSearchResponseBody200> body,
  ) => PerformSearchResponse200.response200(body);

  /// No matching record found for the given criteria.
  factory PerformSearchResponse.response404() =>
      PerformSearchResponse404.response404();

  R map<R>({
    required ResponseMap<PerformSearchResponse200, R> on200,
    required ResponseMap<PerformSearchResponse404, R> on404,
    ResponseMap<PerformSearchResponse, R>? onElse,
  }) {
    if (this is PerformSearchResponse200) {
      return on200((this as PerformSearchResponse200));
    } else if (this is PerformSearchResponse404) {
      return on404((this as PerformSearchResponse404));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  successful operation
  @override
  List<PerformSearchResponseBody200> requireSuccess() {
    if (this is PerformSearchResponse200) {
      return (this as PerformSearchResponse200).body;
    } else {
      throw OpenApiRequireSuccessException(this);
    }
  }
}

@freezed
sealed class PerformSearchSchema
    with _$PerformSearchSchema
    implements OpenApiContent {
  const PerformSearchSchema._();

  const factory PerformSearchSchema({
    @JsonKey(name: 'criteria', includeIfNull: false)
    @Default('*:*')
    required String criteria,
    @JsonKey(name: 'start', includeIfNull: false) @Default(0) int start,
    @JsonKey(name: 'rows', includeIfNull: false) @Default(100) int rows,
  }) = _PerformSearchSchema;

  factory PerformSearchSchema.fromJson(Map<String, dynamic> jsonMap) =>
      _$PerformSearchSchemaFromJson(jsonMap);

  @override
  String toString() => toJson().toString();
}

abstract class OaiUspto implements ApiEndpoint {
  /// List available data sets
  /// get: /
  Future<ListDataSetsResponse> listDataSets();

  /// Provides the general information about the API and the list of fields that can be used to query the dataset.
  /// This GET API returns the list of all the searchable field names that are in the oa_citations. Please see the 'fields' attribute which returns an array of field names. Each field or a combination of fields can be searched using the syntax options shown below.
  /// get: /{dataset}/{version}/fields
  Future<ListSearchableFieldsResponse> listSearchableFields({
    required String dataset,
    required String version,
  });

  /// Provides search capability for the data set with the given search criteria.
  /// This API is based on Solr/Lucense Search. The data is indexed using SOLR. This GET API returns the list of all the searchable field names that are in the Solr Index. Please see the 'fields' attribute which returns an array of field names. Each field or a combination of fields can be searched using the Solr/Lucene Syntax. Please refer https://lucene.apache.org/core/3_6_2/queryparsersyntax.html#Overview for the query syntax. List of field names that are searchable can be determined using above GET api.
  /// post: /{dataset}/{version}/records
  Future<PerformSearchResponse> performSearch(
    PerformSearchSchema body, {
    required String version,
    required String dataset,
  });
}

abstract class OaiUsptoClient implements OpenApiClient {
  factory OaiUsptoClient(Uri baseUri, OpenApiRequestSender requestSender) =>
      _OaiUsptoClientImpl._(baseUri, requestSender);

  OpenApiClientRequest createListDataSetsRequest();

  /// List available data sets
  /// get: /
  ///
  Future<ListDataSetsResponse> listDataSets();
  OpenApiClientRequest createListSearchableFieldsRequest({
    required String dataset,
    required String version,
  });

  /// Provides the general information about the API and the list of fields that can be used to query the dataset.
  /// This GET API returns the list of all the searchable field names that are in the oa_citations. Please see the 'fields' attribute which returns an array of field names. Each field or a combination of fields can be searched using the syntax options shown below.
  /// get: /{dataset}/{version}/fields
  ///
  /// * [dataset]: Name of the dataset.
  /// * [version]: Version of the dataset.
  Future<ListSearchableFieldsResponse> listSearchableFields({
    required String dataset,
    required String version,
  });
  OpenApiClientRequest createPerformSearchRequest(
    PerformSearchSchema body, {
    required String version,
    required String dataset,
  });

  /// Provides search capability for the data set with the given search criteria.
  /// This API is based on Solr/Lucense Search. The data is indexed using SOLR. This GET API returns the list of all the searchable field names that are in the Solr Index. Please see the 'fields' attribute which returns an array of field names. Each field or a combination of fields can be searched using the Solr/Lucene Syntax. Please refer https://lucene.apache.org/core/3_6_2/queryparsersyntax.html#Overview for the query syntax. List of field names that are searchable can be determined using above GET api.
  /// post: /{dataset}/{version}/records
  ///
  /// * [version]: Version of the dataset.
  /// * [dataset]: Name of the dataset. In this case, the default value is oa_citations
  Future<PerformSearchResponse> performSearch(
    PerformSearchSchema body, {
    required String version,
    required String dataset,
  });
}

class _OaiUsptoClientImpl extends OpenApiClientBase implements OaiUsptoClient {
  _OaiUsptoClientImpl._(this.baseUri, this.requestSender);

  @override
  final Uri baseUri;

  @override
  final OpenApiRequestSender requestSender;

  @override
  OpenApiClientRequest createListDataSetsRequest() {
    final request = OpenApiClientRequest('get', '/', []);
    return request;
  }

  /// List available data sets
  /// get: /
  ///
  @override
  Future<ListDataSetsResponse> listDataSets() async {
    final request = createListDataSetsRequest();
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          ListDataSetsResponse200.response200(
            DataSetList.fromJson(await response.responseBodyJson()),
          ),
    });
  }

  @override
  OpenApiClientRequest createListSearchableFieldsRequest({
    required String dataset,
    required String version,
  }) {
    final request = OpenApiClientRequest(
      'get',
      '/{dataset}/{version}/fields',
      [],
    );
    request.addPathParameter('dataset', encodeString(dataset));
    request.addPathParameter('version', encodeString(version));
    return request;
  }

  /// Provides the general information about the API and the list of fields that can be used to query the dataset.
  /// This GET API returns the list of all the searchable field names that are in the oa_citations. Please see the 'fields' attribute which returns an array of field names. Each field or a combination of fields can be searched using the syntax options shown below.
  /// get: /{dataset}/{version}/fields
  ///
  /// * [dataset]: Name of the dataset.
  /// * [version]: Version of the dataset.
  @override
  Future<ListSearchableFieldsResponse> listSearchableFields({
    required String dataset,
    required String version,
  }) async {
    final request = createListSearchableFieldsRequest(
      dataset: dataset,
      version: version,
    );
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          ListSearchableFieldsResponse200.response200(
            (await response.responseBodyJsonDynamic() as String),
          ),
      '404': (OpenApiClientResponse response) async =>
          ListSearchableFieldsResponse404.response404(
            (await response.responseBodyJsonDynamic() as String),
          ),
    });
  }

  @override
  OpenApiClientRequest createPerformSearchRequest(
    PerformSearchSchema body, {
    required String version,
    required String dataset,
  }) {
    final request = OpenApiClientRequest(
      'post',
      '/{dataset}/{version}/records',
      [],
    );
    request.addPathParameter('version', encodeString(version));
    request.addPathParameter('dataset', encodeString(dataset));
    request.setHeader('content-type', 'application/x-www-form-urlencoded');
    request.setBody(OpenApiClientRequestBodyJson(body.toJson()));
    return request;
  }

  /// Provides search capability for the data set with the given search criteria.
  /// This API is based on Solr/Lucense Search. The data is indexed using SOLR. This GET API returns the list of all the searchable field names that are in the Solr Index. Please see the 'fields' attribute which returns an array of field names. Each field or a combination of fields can be searched using the Solr/Lucene Syntax. Please refer https://lucene.apache.org/core/3_6_2/queryparsersyntax.html#Overview for the query syntax. List of field names that are searchable can be determined using above GET api.
  /// post: /{dataset}/{version}/records
  ///
  /// * [version]: Version of the dataset.
  /// * [dataset]: Name of the dataset. In this case, the default value is oa_citations
  @override
  Future<PerformSearchResponse> performSearch(
    PerformSearchSchema body, {
    required String version,
    required String dataset,
  }) async {
    final request = createPerformSearchRequest(
      body,
      version: version,
      dataset: dataset,
    );
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          PerformSearchResponse200.response200(
            (await response.responseBodyJsonDynamic() as List<dynamic>)
                .map(
                  (e) => PerformSearchResponseBody200.fromJson(
                    (e as Map<String, dynamic>),
                  ),
                )
                .toList(),
          ),
      '404': (OpenApiClientResponse response) async =>
          PerformSearchResponse404.response404(),
    });
  }
}

class OaiUsptoUrlResolve with OpenApiUrlEncodeMixin {
  /// List available data sets
  /// get: /
  ///
  OpenApiClientRequest listDataSets() {
    final request = OpenApiClientRequest('get', '/', []);
    return request;
  }

  /// Provides the general information about the API and the list of fields that can be used to query the dataset.
  /// This GET API returns the list of all the searchable field names that are in the oa_citations. Please see the 'fields' attribute which returns an array of field names. Each field or a combination of fields can be searched using the syntax options shown below.
  /// get: /{dataset}/{version}/fields
  ///
  /// * [dataset]: Name of the dataset.
  /// * [version]: Version of the dataset.
  OpenApiClientRequest listSearchableFields({
    required String dataset,
    required String version,
  }) {
    final request = OpenApiClientRequest(
      'get',
      '/{dataset}/{version}/fields',
      [],
    );
    request.addPathParameter('dataset', encodeString(dataset));
    request.addPathParameter('version', encodeString(version));
    return request;
  }

  /// Provides search capability for the data set with the given search criteria.
  /// This API is based on Solr/Lucense Search. The data is indexed using SOLR. This GET API returns the list of all the searchable field names that are in the Solr Index. Please see the 'fields' attribute which returns an array of field names. Each field or a combination of fields can be searched using the Solr/Lucene Syntax. Please refer https://lucene.apache.org/core/3_6_2/queryparsersyntax.html#Overview for the query syntax. List of field names that are searchable can be determined using above GET api.
  /// post: /{dataset}/{version}/records
  ///
  /// * [version]: Version of the dataset.
  /// * [dataset]: Name of the dataset. In this case, the default value is oa_citations
  OpenApiClientRequest performSearch({
    required String version,
    required String dataset,
  }) {
    final request = OpenApiClientRequest(
      'post',
      '/{dataset}/{version}/records',
      [],
    );
    request.addPathParameter('version', encodeString(version));
    request.addPathParameter('dataset', encodeString(dataset));
    return request;
  }
}

class OaiUsptoRouter extends OpenApiServerRouterBase {
  OaiUsptoRouter(this.impl);

  final ApiEndpointProvider<OaiUspto> impl;

  @override
  void configure() {
    addRoute('/', 'get', (OpenApiRequest request) async {
      return await impl.invoke(
        request,
        (OaiUspto impl) async => impl.listDataSets(),
      );
    }, security: []);
    addRoute('/{dataset}/{version}/fields', 'get', (
      OpenApiRequest request,
    ) async {
      return await impl.invoke(
        request,
        (OaiUspto impl) async => impl.listSearchableFields(
          dataset: paramRequired(
            name: 'dataset',
            value: request.pathParameter('dataset'),
            decode: (value) => paramToString(value),
          ),
          version: paramRequired(
            name: 'version',
            value: request.pathParameter('version'),
            decode: (value) => paramToString(value),
          ),
        ),
      );
    }, security: []);
    addRoute('/{dataset}/{version}/records', 'post', (
      OpenApiRequest request,
    ) async {
      return await impl.invoke(
        request,
        (OaiUspto impl) async => impl.performSearch(
          PerformSearchSchema.fromJson(await request.readUrlEncodedBodyFlat()),
          version: paramRequired(
            name: 'version',
            value: request.pathParameter('version'),
            decode: (value) => paramToString(value),
          ),
          dataset: paramRequired(
            name: 'dataset',
            value: request.pathParameter('dataset'),
            decode: (value) => paramToString(value),
          ),
        ),
      );
    }, security: []);
  }
}

class SecuritySchemes {}
