import 'dart:convert';

import 'package:openapi_code_builder_example/src/api/openapi31.openapi.dart';
import 'package:test/test.dart';

/// Decodes json for the OpenAPI 3.1 types of `openapi31.openapi.yaml`.
void main() {
  test('null values of nullable types and references decode', () {
    final pet = Pet.fromJson({
      'id': 1,
      'name': 'Rex',
      'kind': 'pet',
      'tag': null,
      'weight': null,
      'owner': null,
      'previousOwner': {'name': 'Ann', 'email': null},
      'nicknames': null,
      'idOrName': 'rex',
    });
    expect(pet.tag, isNull);
    expect(pet.owner, isNull);
    expect(pet.previousOwner?.name, 'Ann');
    expect(pet.previousOwner?.email, isNull);
    expect(pet.idOrName, 'rex');
  });

  test('values of type arrays decode', () {
    final pet = Pet.fromJson({
      'id': 1,
      'name': 'Rex',
      'kind': 'pet',
      'tag': 'good',
      'weight': 12.5,
      'owner': {'name': 'Bob'},
      'nicknames': ['R'],
      'idOrName': 7,
    });
    expect(pet.tag, 'good');
    expect(pet.weight, 12.5);
    expect(pet.owner?.name, 'Bob');
    expect(pet.nicknames, ['R']);
    expect(pet.idOrName, 7);
    final json = jsonDecode(jsonEncode(pet)) as Map<String, dynamic>;
    expect(Pet.fromJson(json), pet);
  });

  test('nullable unions through refs, and kept defaults', () {
    final adoption = Adoption.fromJson({
      'pet': {'id': 1, 'name': 'Rex', 'kind': 'pet'},
      'adopter': null,
    });
    expect(adoption.adopter, isNull);
    expect(adoption.pet.status, 'available');
    expect(
      Adoption.fromJson({
        'pet': {'id': 1, 'name': 'Rex', 'kind': 'pet', 'status': 'sold'},
        'adopter': {'name': 'Ann'},
      }).adopter?.name,
      'Ann',
    );
  });
}
