import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:openapi_base/openapi_base.dart';
import 'package:openapi_code_builder_example/src/api/json_values.openapi.dart';
import 'package:test/test.dart';

/// Round trips json bodies which are not objects through the generated
/// server and client of `json_values.openapi.yaml`.
void main() {
  late StoppableProcessBase server;
  late Uri baseUri;
  late HttpRequestSender requestSender;
  late JsonValuesApiClient client;

  setUpAll(() async {
    final (:process, :port) = await _startServer(
      OpenApiShelfServer(
        JsonValuesApiRouter(ApiEndpointProvider.static(_JsonValuesApiImpl())),
      ),
    );
    server = process;
    baseUri = Uri.parse('http://${InternetAddress.loopbackIPv4.address}:$port');
    requestSender = HttpRequestSender();
    client = JsonValuesApiClient(baseUri, requestSender);
  });

  tearDownAll(() async {
    requestSender.dispose();
    await server.stop(0);
  });

  /// The json the server sends for [path].
  Future<Object?> getJson(String path) async {
    final response = await http.get(baseUri.resolve(path));
    expect(response.statusCode, 200);
    return json.decode(response.body);
  }

  test('primitive body', () async {
    expect(await getJson('/count'), 42);
    expect((await client.getCount()).requireSuccess(), 42);
  });

  test('array of strings', () async {
    expect(await getJson('/names'), ['a', 'b']);
    expect((await client.getNames()).requireSuccess(), ['a', 'b']);
  });

  test('array of uuids', () async {
    expect(await getJson('/ids'), [_uuid]);
    final ids = (await client.getIds()).requireSuccess();
    expect(ids.map((e) => e.toString()), [_uuid]);
  });

  test('array of enums is sent and received by json value', () async {
    final colors = (await client.echoColors([
      Color.lightGreen,
      Color.red,
    ])).requireSuccess();
    expect(colors, [Color.lightGreen, Color.red]);
  });

  test('array of date-times is sent and received as iso 8601', () async {
    final dates = [DateTime.utc(2020, 1, 2, 3, 4, 5), DateTime.utc(1999)];
    expect((await client.echoDates(dates)).requireSuccess(), dates);
  });

  test('array of objects is decoded on the server and the client', () async {
    const items = [Item(name: 'one'), Item(name: 'two')];
    expect((await client.echoItems(items)).requireSuccess(), items);
  });

  test('array of nullable items keeps nulls', () async {
    expect(await getJson('/sparse'), [1, null, 3]);
    expect((await client.getSparse()).requireSuccess(), [1, null, 3]);
  });

  test('nested arrays', () async {
    expect(await getJson('/matrix'), [
      [1, 2.5],
      <Object?>[],
    ]);
    expect((await client.getMatrix()).requireSuccess(), [
      [1, 2.5],
      <num>[],
    ]);
  });

  test('nullable primitive body', () async {
    expect(
      (await client.getMaybe(empty: false)).requireSuccess(),
      DateTime.utc(2020),
    );
    expect(await getJson('/maybe?empty=true'), isNull);
    expect((await client.getMaybe(empty: true)).requireSuccess(), isNull);
  });

  test('nullable additionalProperties', () async {
    expect(await getJson('/bag'), {'label': 'bag', 'a': 1, 'b': null});
    final bag = (await client.getBag()).requireSuccess();
    expect(bag.label, 'bag');
    expect(bag.additionalProperties, {'a': 1, 'b': null});
  });

  test('date-time additionalProperties are sent as iso 8601', () async {
    expect(await getJson('/schedule'), {'start': '2020-01-02T00:00:00.000Z'});
    final schedule = (await client.getSchedule()).requireSuccess();
    expect(schedule.additionalProperties, {'start': DateTime.utc(2020, 1, 2)});
  });

  test('enum array additionalProperties are sent as json values', () async {
    expect(await getJson('/palette'), {
      'warm': ['red', 'light-green'],
    });
    final palette = (await client.getPalette()).requireSuccess();
    expect(palette.additionalProperties, {
      'warm': [Color.red, Color.lightGreen],
    });
  });
}

const _uuid = '0b0e2c8e-7f3a-4b5c-9d6e-1f2a3b4c5d6e';

/// Starts [server] on a free loopback port.
///
/// `startServer` does not report the port it bound, so a free port is looked
/// up first. Another process can take it before the server binds, so that is
/// retried.
Future<({StoppableProcessBase process, int port})> _startServer(
  OpenApiShelfServer server,
) async {
  final address = InternetAddress.loopbackIPv4.address;
  for (var attempt = 1; ; attempt++) {
    final socket = await ServerSocket.bind(address, 0);
    final port = socket.port;
    await socket.close();
    try {
      final process = await server.startServer(address: address, port: port);
      return (process: process, port: port);
    } on SocketException {
      if (attempt == 5) {
        rethrow;
      }
    }
  }
}

class _JsonValuesApiImpl extends JsonValuesApi {
  @override
  Future<GetCountResponse> getCount() async => GetCountResponse.response200(42);

  @override
  Future<GetNamesResponse> getNames() async =>
      GetNamesResponse.response200(['a', 'b']);

  @override
  Future<GetIdsResponse> getIds() async =>
      GetIdsResponse.response200([ApiUuid.parse(_uuid)]);

  @override
  Future<EchoColorsResponse> echoColors(List<Color> body) async =>
      EchoColorsResponse.response200(body);

  @override
  Future<EchoDatesResponse> echoDates(List<DateTime> body) async =>
      EchoDatesResponse.response200(body);

  @override
  Future<EchoItemsResponse> echoItems(List<Item> body) async =>
      EchoItemsResponse.response200(body);

  @override
  Future<GetSparseResponse> getSparse() async =>
      GetSparseResponse.response200([1, null, 3]);

  @override
  Future<GetMatrixResponse> getMatrix() async => GetMatrixResponse.response200([
    [1, 2.5],
    [],
  ]);

  @override
  Future<GetMaybeResponse> getMaybe({required bool empty}) async =>
      GetMaybeResponse.response200(empty ? null : DateTime.utc(2020));

  @override
  Future<GetBagResponse> getBag() async => GetBagResponse.response200(
    Bag(label: 'bag')
      ..['a'] = 1
      ..['b'] = null,
  );

  @override
  Future<GetScheduleResponse> getSchedule() async =>
      GetScheduleResponse.response200(
        Schedule()..['start'] = DateTime.utc(2020, 1, 2),
      );

  @override
  Future<GetPaletteResponse> getPalette() async =>
      GetPaletteResponse.response200(
        Palette()..['warm'] = [Color.red, Color.lightGreen],
      );
}
