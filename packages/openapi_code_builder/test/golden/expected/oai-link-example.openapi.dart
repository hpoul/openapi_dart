// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: prefer_initializing_formals, library_private_types_in_public_api, annotate_overrides, sort_unnamed_constructors_first, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:openapi_base/openapi_base.dart';
part 'oai-link-example.openapi.g.dart';
part 'oai-link-example.openapi.freezed.dart';

@freezed
sealed class User with _$User implements OpenApiContent {
  const User._();

  const factory User({
    @JsonKey(name: 'username', includeIfNull: false) String? username,
    @JsonKey(name: 'uuid', includeIfNull: false) String? uuid,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> jsonMap) =>
      _$UserFromJson(jsonMap);

  @override
  String toString() => toJson().toString();
}

@freezed
sealed class Repository with _$Repository implements OpenApiContent {
  const Repository._();

  const factory Repository({
    @JsonKey(name: 'slug', includeIfNull: false) String? slug,
    @JsonKey(name: 'owner', includeIfNull: false) User? owner,
  }) = _Repository;

  factory Repository.fromJson(Map<String, dynamic> jsonMap) =>
      _$RepositoryFromJson(jsonMap);

  @override
  String toString() => toJson().toString();
}

@freezed
sealed class Pullrequest with _$Pullrequest implements OpenApiContent {
  const Pullrequest._();

  const factory Pullrequest({
    @JsonKey(name: 'id', includeIfNull: false) int? id,
    @JsonKey(name: 'title', includeIfNull: false) String? title,
    @JsonKey(name: 'repository', includeIfNull: false) Repository? repository,
    @JsonKey(name: 'author', includeIfNull: false) User? author,
  }) = _Pullrequest;

  factory Pullrequest.fromJson(Map<String, dynamic> jsonMap) =>
      _$PullrequestFromJson(jsonMap);

  @override
  String toString() => toJson().toString();
}

class GetUserByNameResponse200 extends GetUserByNameResponse
    implements OpenApiResponseBodyJson {
  /// The User
  GetUserByNameResponse200.response200(this.body)
    : status = 200,
      bodyJson = body.toJson();

  @override
  final int status;

  final User body;

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

sealed class GetUserByNameResponse extends OpenApiResponse
    implements HasSuccessResponse<User> {
  GetUserByNameResponse();

  /// The User
  factory GetUserByNameResponse.response200(User body) =>
      GetUserByNameResponse200.response200(body);

  R map<R>({
    required ResponseMap<GetUserByNameResponse200, R> on200,
    ResponseMap<GetUserByNameResponse, R>? onElse,
  }) {
    if (this is GetUserByNameResponse200) {
      return on200((this as GetUserByNameResponse200));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  The User
  @override
  User requireSuccess() {
    if (this is GetUserByNameResponse200) {
      return (this as GetUserByNameResponse200).body;
    } else {
      throw OpenApiRequireSuccessException(this);
    }
  }
}

class GetRepositoriesByOwnerResponse200 extends GetRepositoriesByOwnerResponse
    implements OpenApiResponseBodyJsonValue {
  /// repositories owned by the supplied user
  GetRepositoriesByOwnerResponse200.response200(this.body)
    : status = 200,
      bodyJsonValue = body;

  @override
  final int status;

  final List<Repository> body;

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

sealed class GetRepositoriesByOwnerResponse extends OpenApiResponse
    implements HasSuccessResponse<List<Repository>> {
  GetRepositoriesByOwnerResponse();

  /// repositories owned by the supplied user
  factory GetRepositoriesByOwnerResponse.response200(List<Repository> body) =>
      GetRepositoriesByOwnerResponse200.response200(body);

  R map<R>({
    required ResponseMap<GetRepositoriesByOwnerResponse200, R> on200,
    ResponseMap<GetRepositoriesByOwnerResponse, R>? onElse,
  }) {
    if (this is GetRepositoriesByOwnerResponse200) {
      return on200((this as GetRepositoriesByOwnerResponse200));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  repositories owned by the supplied user
  @override
  List<Repository> requireSuccess() {
    if (this is GetRepositoriesByOwnerResponse200) {
      return (this as GetRepositoriesByOwnerResponse200).body;
    } else {
      throw OpenApiRequireSuccessException(this);
    }
  }
}

class GetRepositoryResponse200 extends GetRepositoryResponse
    implements OpenApiResponseBodyJson {
  /// The repository
  GetRepositoryResponse200.response200(this.body)
    : status = 200,
      bodyJson = body.toJson();

  @override
  final int status;

  final Repository body;

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

sealed class GetRepositoryResponse extends OpenApiResponse
    implements HasSuccessResponse<Repository> {
  GetRepositoryResponse();

  /// The repository
  factory GetRepositoryResponse.response200(Repository body) =>
      GetRepositoryResponse200.response200(body);

  R map<R>({
    required ResponseMap<GetRepositoryResponse200, R> on200,
    ResponseMap<GetRepositoryResponse, R>? onElse,
  }) {
    if (this is GetRepositoryResponse200) {
      return on200((this as GetRepositoryResponse200));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  The repository
  @override
  Repository requireSuccess() {
    if (this is GetRepositoryResponse200) {
      return (this as GetRepositoryResponse200).body;
    } else {
      throw OpenApiRequireSuccessException(this);
    }
  }
}

class GetPullRequestsByRepositoryResponse200
    extends GetPullRequestsByRepositoryResponse
    implements OpenApiResponseBodyJsonValue {
  /// an array of pull request objects
  GetPullRequestsByRepositoryResponse200.response200(this.body)
    : status = 200,
      bodyJsonValue = body;

  @override
  final int status;

  final List<Pullrequest> body;

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

sealed class GetPullRequestsByRepositoryResponse extends OpenApiResponse
    implements HasSuccessResponse<List<Pullrequest>> {
  GetPullRequestsByRepositoryResponse();

  /// an array of pull request objects
  factory GetPullRequestsByRepositoryResponse.response200(
    List<Pullrequest> body,
  ) => GetPullRequestsByRepositoryResponse200.response200(body);

  R map<R>({
    required ResponseMap<GetPullRequestsByRepositoryResponse200, R> on200,
    ResponseMap<GetPullRequestsByRepositoryResponse, R>? onElse,
  }) {
    if (this is GetPullRequestsByRepositoryResponse200) {
      return on200((this as GetPullRequestsByRepositoryResponse200));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  an array of pull request objects
  @override
  List<Pullrequest> requireSuccess() {
    if (this is GetPullRequestsByRepositoryResponse200) {
      return (this as GetPullRequestsByRepositoryResponse200).body;
    } else {
      throw OpenApiRequireSuccessException(this);
    }
  }
}

@JsonEnum(alwaysCreate: true)
enum GetPullRequestsByRepository {
  @JsonValue('open')
  open,
  @JsonValue('merged')
  merged,
  @JsonValue('declined')
  declined,
}

extension GetPullRequestsByRepositoryExt on GetPullRequestsByRepository {
  static GetPullRequestsByRepository fromName(String name) {
    return $enumDecode(_$GetPullRequestsByRepositoryEnumMap, name);
  }

  String get jsonValue =>
      _$GetPullRequestsByRepositoryEnumMap[this] ??
      (() => throw StateError('Invalid enum.'))();
}

class GetPullRequestsByIdResponse200 extends GetPullRequestsByIdResponse
    implements OpenApiResponseBodyJson {
  /// a pull request object
  GetPullRequestsByIdResponse200.response200(this.body)
    : status = 200,
      bodyJson = body.toJson();

  @override
  final int status;

  final Pullrequest body;

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

sealed class GetPullRequestsByIdResponse extends OpenApiResponse
    implements HasSuccessResponse<Pullrequest> {
  GetPullRequestsByIdResponse();

  /// a pull request object
  factory GetPullRequestsByIdResponse.response200(Pullrequest body) =>
      GetPullRequestsByIdResponse200.response200(body);

  R map<R>({
    required ResponseMap<GetPullRequestsByIdResponse200, R> on200,
    ResponseMap<GetPullRequestsByIdResponse, R>? onElse,
  }) {
    if (this is GetPullRequestsByIdResponse200) {
      return on200((this as GetPullRequestsByIdResponse200));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  a pull request object
  @override
  Pullrequest requireSuccess() {
    if (this is GetPullRequestsByIdResponse200) {
      return (this as GetPullRequestsByIdResponse200).body;
    } else {
      throw OpenApiRequireSuccessException(this);
    }
  }
}

class MergePullRequestResponse204 extends MergePullRequestResponse {
  /// the PR was successfully merged
  MergePullRequestResponse204.response204() : status = 204;

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

sealed class MergePullRequestResponse extends OpenApiResponse
    implements HasSuccessResponse<void> {
  MergePullRequestResponse();

  /// the PR was successfully merged
  factory MergePullRequestResponse.response204() =>
      MergePullRequestResponse204.response204();

  R map<R>({
    required ResponseMap<MergePullRequestResponse204, R> on204,
    ResponseMap<MergePullRequestResponse, R>? onElse,
  }) {
    if (this is MergePullRequestResponse204) {
      return on204((this as MergePullRequestResponse204));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 204:  the PR was successfully merged
  @override
  void requireSuccess() {
    if (this is MergePullRequestResponse204) {
      return;
    } else {
      throw OpenApiRequireSuccessException(this);
    }
  }
}

abstract class OaiLinkExample implements ApiEndpoint {
  /// get: /2.0/users/{username}
  Future<GetUserByNameResponse> getUserByName({required String username});

  /// get: /2.0/repositories/{username}
  Future<GetRepositoriesByOwnerResponse> getRepositoriesByOwner({
    required String username,
  });

  /// get: /2.0/repositories/{username}/{slug}
  Future<GetRepositoryResponse> getRepository({
    required String username,
    required String slug,
  });

  /// get: /2.0/repositories/{username}/{slug}/pullrequests
  Future<GetPullRequestsByRepositoryResponse> getPullRequestsByRepository({
    required String username,
    required String slug,
    GetPullRequestsByRepository? state,
  });

  /// get: /2.0/repositories/{username}/{slug}/pullrequests/{pid}
  Future<GetPullRequestsByIdResponse> getPullRequestsById({
    required String username,
    required String slug,
    required String pid,
  });

  /// post: /2.0/repositories/{username}/{slug}/pullrequests/{pid}/merge
  Future<MergePullRequestResponse> mergePullRequest({
    required String username,
    required String slug,
    required String pid,
  });
}

abstract class OaiLinkExampleClient implements OpenApiClient {
  factory OaiLinkExampleClient(
    Uri baseUri,
    OpenApiRequestSender requestSender,
  ) => _OaiLinkExampleClientImpl._(baseUri, requestSender);

  OpenApiClientRequest createGetUserByNameRequest({required String username});

  /// get: /2.0/users/{username}
  ///
  Future<GetUserByNameResponse> getUserByName({required String username});
  OpenApiClientRequest createGetRepositoriesByOwnerRequest({
    required String username,
  });

  /// get: /2.0/repositories/{username}
  ///
  Future<GetRepositoriesByOwnerResponse> getRepositoriesByOwner({
    required String username,
  });
  OpenApiClientRequest createGetRepositoryRequest({
    required String username,
    required String slug,
  });

  /// get: /2.0/repositories/{username}/{slug}
  ///
  Future<GetRepositoryResponse> getRepository({
    required String username,
    required String slug,
  });
  OpenApiClientRequest createGetPullRequestsByRepositoryRequest({
    required String username,
    required String slug,
    GetPullRequestsByRepository? state,
  });

  /// get: /2.0/repositories/{username}/{slug}/pullrequests
  ///
  Future<GetPullRequestsByRepositoryResponse> getPullRequestsByRepository({
    required String username,
    required String slug,
    GetPullRequestsByRepository? state,
  });
  OpenApiClientRequest createGetPullRequestsByIdRequest({
    required String username,
    required String slug,
    required String pid,
  });

  /// get: /2.0/repositories/{username}/{slug}/pullrequests/{pid}
  ///
  Future<GetPullRequestsByIdResponse> getPullRequestsById({
    required String username,
    required String slug,
    required String pid,
  });
  OpenApiClientRequest createMergePullRequestRequest({
    required String username,
    required String slug,
    required String pid,
  });

  /// post: /2.0/repositories/{username}/{slug}/pullrequests/{pid}/merge
  ///
  Future<MergePullRequestResponse> mergePullRequest({
    required String username,
    required String slug,
    required String pid,
  });
}

class _OaiLinkExampleClientImpl extends OpenApiClientBase
    implements OaiLinkExampleClient {
  _OaiLinkExampleClientImpl._(this.baseUri, this.requestSender);

  @override
  final Uri baseUri;

  @override
  final OpenApiRequestSender requestSender;

  @override
  OpenApiClientRequest createGetUserByNameRequest({required String username}) {
    final request = OpenApiClientRequest('get', '/2.0/users/{username}', []);
    request.addPathParameter('username', encodeString(username));
    return request;
  }

  /// get: /2.0/users/{username}
  ///
  @override
  Future<GetUserByNameResponse> getUserByName({
    required String username,
  }) async {
    final request = createGetUserByNameRequest(username: username);
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          GetUserByNameResponse200.response200(
            User.fromJson(await response.responseBodyJson()),
          ),
    });
  }

  @override
  OpenApiClientRequest createGetRepositoriesByOwnerRequest({
    required String username,
  }) {
    final request = OpenApiClientRequest(
      'get',
      '/2.0/repositories/{username}',
      [],
    );
    request.addPathParameter('username', encodeString(username));
    return request;
  }

  /// get: /2.0/repositories/{username}
  ///
  @override
  Future<GetRepositoriesByOwnerResponse> getRepositoriesByOwner({
    required String username,
  }) async {
    final request = createGetRepositoriesByOwnerRequest(username: username);
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          GetRepositoriesByOwnerResponse200.response200(
            (await response.responseBodyJsonDynamic() as List<dynamic>)
                .map((e) => Repository.fromJson((e as Map<String, dynamic>)))
                .toList(),
          ),
    });
  }

  @override
  OpenApiClientRequest createGetRepositoryRequest({
    required String username,
    required String slug,
  }) {
    final request = OpenApiClientRequest(
      'get',
      '/2.0/repositories/{username}/{slug}',
      [],
    );
    request.addPathParameter('username', encodeString(username));
    request.addPathParameter('slug', encodeString(slug));
    return request;
  }

  /// get: /2.0/repositories/{username}/{slug}
  ///
  @override
  Future<GetRepositoryResponse> getRepository({
    required String username,
    required String slug,
  }) async {
    final request = createGetRepositoryRequest(username: username, slug: slug);
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          GetRepositoryResponse200.response200(
            Repository.fromJson(await response.responseBodyJson()),
          ),
    });
  }

  @override
  OpenApiClientRequest createGetPullRequestsByRepositoryRequest({
    required String username,
    required String slug,
    GetPullRequestsByRepository? state,
  }) {
    final request = OpenApiClientRequest(
      'get',
      '/2.0/repositories/{username}/{slug}/pullrequests',
      [],
    );
    request.addPathParameter('username', encodeString(username));
    request.addPathParameter('slug', encodeString(slug));
    request.addQueryParameter('state', encodeString(state?.jsonValue));
    return request;
  }

  /// get: /2.0/repositories/{username}/{slug}/pullrequests
  ///
  @override
  Future<GetPullRequestsByRepositoryResponse> getPullRequestsByRepository({
    required String username,
    required String slug,
    GetPullRequestsByRepository? state,
  }) async {
    final request = createGetPullRequestsByRepositoryRequest(
      username: username,
      slug: slug,
      state: state,
    );
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          GetPullRequestsByRepositoryResponse200.response200(
            (await response.responseBodyJsonDynamic() as List<dynamic>)
                .map((e) => Pullrequest.fromJson((e as Map<String, dynamic>)))
                .toList(),
          ),
    });
  }

  @override
  OpenApiClientRequest createGetPullRequestsByIdRequest({
    required String username,
    required String slug,
    required String pid,
  }) {
    final request = OpenApiClientRequest(
      'get',
      '/2.0/repositories/{username}/{slug}/pullrequests/{pid}',
      [],
    );
    request.addPathParameter('username', encodeString(username));
    request.addPathParameter('slug', encodeString(slug));
    request.addPathParameter('pid', encodeString(pid));
    return request;
  }

  /// get: /2.0/repositories/{username}/{slug}/pullrequests/{pid}
  ///
  @override
  Future<GetPullRequestsByIdResponse> getPullRequestsById({
    required String username,
    required String slug,
    required String pid,
  }) async {
    final request = createGetPullRequestsByIdRequest(
      username: username,
      slug: slug,
      pid: pid,
    );
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          GetPullRequestsByIdResponse200.response200(
            Pullrequest.fromJson(await response.responseBodyJson()),
          ),
    });
  }

  @override
  OpenApiClientRequest createMergePullRequestRequest({
    required String username,
    required String slug,
    required String pid,
  }) {
    final request = OpenApiClientRequest(
      'post',
      '/2.0/repositories/{username}/{slug}/pullrequests/{pid}/merge',
      [],
    );
    request.addPathParameter('username', encodeString(username));
    request.addPathParameter('slug', encodeString(slug));
    request.addPathParameter('pid', encodeString(pid));
    return request;
  }

  /// post: /2.0/repositories/{username}/{slug}/pullrequests/{pid}/merge
  ///
  @override
  Future<MergePullRequestResponse> mergePullRequest({
    required String username,
    required String slug,
    required String pid,
  }) async {
    final request = createMergePullRequestRequest(
      username: username,
      slug: slug,
      pid: pid,
    );
    return await sendRequest(request, {
      '204': (OpenApiClientResponse response) async =>
          MergePullRequestResponse204.response204(),
    });
  }
}

class OaiLinkExampleUrlResolve with OpenApiUrlEncodeMixin {
  /// get: /2.0/users/{username}
  ///
  OpenApiClientRequest getUserByName({required String username}) {
    final request = OpenApiClientRequest('get', '/2.0/users/{username}', []);
    request.addPathParameter('username', encodeString(username));
    return request;
  }

  /// get: /2.0/repositories/{username}
  ///
  OpenApiClientRequest getRepositoriesByOwner({required String username}) {
    final request = OpenApiClientRequest(
      'get',
      '/2.0/repositories/{username}',
      [],
    );
    request.addPathParameter('username', encodeString(username));
    return request;
  }

  /// get: /2.0/repositories/{username}/{slug}
  ///
  OpenApiClientRequest getRepository({
    required String username,
    required String slug,
  }) {
    final request = OpenApiClientRequest(
      'get',
      '/2.0/repositories/{username}/{slug}',
      [],
    );
    request.addPathParameter('username', encodeString(username));
    request.addPathParameter('slug', encodeString(slug));
    return request;
  }

  /// get: /2.0/repositories/{username}/{slug}/pullrequests
  ///
  OpenApiClientRequest getPullRequestsByRepository({
    required String username,
    required String slug,
    GetPullRequestsByRepository? state,
  }) {
    final request = OpenApiClientRequest(
      'get',
      '/2.0/repositories/{username}/{slug}/pullrequests',
      [],
    );
    request.addPathParameter('username', encodeString(username));
    request.addPathParameter('slug', encodeString(slug));
    request.addQueryParameter('state', encodeString(state?.jsonValue));
    return request;
  }

  /// get: /2.0/repositories/{username}/{slug}/pullrequests/{pid}
  ///
  OpenApiClientRequest getPullRequestsById({
    required String username,
    required String slug,
    required String pid,
  }) {
    final request = OpenApiClientRequest(
      'get',
      '/2.0/repositories/{username}/{slug}/pullrequests/{pid}',
      [],
    );
    request.addPathParameter('username', encodeString(username));
    request.addPathParameter('slug', encodeString(slug));
    request.addPathParameter('pid', encodeString(pid));
    return request;
  }

  /// post: /2.0/repositories/{username}/{slug}/pullrequests/{pid}/merge
  ///
  OpenApiClientRequest mergePullRequest({
    required String username,
    required String slug,
    required String pid,
  }) {
    final request = OpenApiClientRequest(
      'post',
      '/2.0/repositories/{username}/{slug}/pullrequests/{pid}/merge',
      [],
    );
    request.addPathParameter('username', encodeString(username));
    request.addPathParameter('slug', encodeString(slug));
    request.addPathParameter('pid', encodeString(pid));
    return request;
  }
}

class OaiLinkExampleRouter extends OpenApiServerRouterBase {
  OaiLinkExampleRouter(this.impl);

  final ApiEndpointProvider<OaiLinkExample> impl;

  @override
  void configure() {
    addRoute('/2.0/users/{username}', 'get', (OpenApiRequest request) async {
      return await impl.invoke(
        request,
        (OaiLinkExample impl) async => impl.getUserByName(
          username: paramRequired(
            name: 'username',
            value: request.pathParameter('username'),
            decode: (value) => paramToString(value),
          ),
        ),
      );
    }, security: []);
    addRoute('/2.0/repositories/{username}', 'get', (
      OpenApiRequest request,
    ) async {
      return await impl.invoke(
        request,
        (OaiLinkExample impl) async => impl.getRepositoriesByOwner(
          username: paramRequired(
            name: 'username',
            value: request.pathParameter('username'),
            decode: (value) => paramToString(value),
          ),
        ),
      );
    }, security: []);
    addRoute('/2.0/repositories/{username}/{slug}', 'get', (
      OpenApiRequest request,
    ) async {
      return await impl.invoke(
        request,
        (OaiLinkExample impl) async => impl.getRepository(
          username: paramRequired(
            name: 'username',
            value: request.pathParameter('username'),
            decode: (value) => paramToString(value),
          ),
          slug: paramRequired(
            name: 'slug',
            value: request.pathParameter('slug'),
            decode: (value) => paramToString(value),
          ),
        ),
      );
    }, security: []);
    addRoute('/2.0/repositories/{username}/{slug}/pullrequests', 'get', (
      OpenApiRequest request,
    ) async {
      return await impl.invoke(
        request,
        (OaiLinkExample impl) async => impl.getPullRequestsByRepository(
          username: paramRequired(
            name: 'username',
            value: request.pathParameter('username'),
            decode: (value) => paramToString(value),
          ),
          slug: paramRequired(
            name: 'slug',
            value: request.pathParameter('slug'),
            decode: (value) => paramToString(value),
          ),
          state: paramOpt(
            name: 'state',
            value: request.queryParameter('state'),
            decode: (value) =>
                GetPullRequestsByRepositoryExt.fromName(paramToString(value)),
          ),
        ),
      );
    }, security: []);
    addRoute('/2.0/repositories/{username}/{slug}/pullrequests/{pid}', 'get', (
      OpenApiRequest request,
    ) async {
      return await impl.invoke(
        request,
        (OaiLinkExample impl) async => impl.getPullRequestsById(
          username: paramRequired(
            name: 'username',
            value: request.pathParameter('username'),
            decode: (value) => paramToString(value),
          ),
          slug: paramRequired(
            name: 'slug',
            value: request.pathParameter('slug'),
            decode: (value) => paramToString(value),
          ),
          pid: paramRequired(
            name: 'pid',
            value: request.pathParameter('pid'),
            decode: (value) => paramToString(value),
          ),
        ),
      );
    }, security: []);
    addRoute(
      '/2.0/repositories/{username}/{slug}/pullrequests/{pid}/merge',
      'post',
      (OpenApiRequest request) async {
        return await impl.invoke(
          request,
          (OaiLinkExample impl) async => impl.mergePullRequest(
            username: paramRequired(
              name: 'username',
              value: request.pathParameter('username'),
              decode: (value) => paramToString(value),
            ),
            slug: paramRequired(
              name: 'slug',
              value: request.pathParameter('slug'),
              decode: (value) => paramToString(value),
            ),
            pid: paramRequired(
              name: 'pid',
              value: request.pathParameter('pid'),
              decode: (value) => paramToString(value),
            ),
          ),
        );
      },
      security: [],
    );
  }
}

class SecuritySchemes {}
