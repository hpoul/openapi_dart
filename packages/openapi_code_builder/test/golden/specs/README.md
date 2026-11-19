# Golden test specs

Public OpenAPI 3.0 documents, pinned to fixed revisions. Do not edit them by
hand: the point is to test the generator against real-world specs.

| File | Source |
| --- | --- |
| `oai-*.yaml` | [OAI/OpenAPI-Specification](https://github.com/OAI/OpenAPI-Specification/tree/3.0.3/examples/v3.0), tag `3.0.3` (`c8e90dfa4ccf8054db1539f7a104c5ccfb1913c3`), Apache-2.0 |
| `custom-*.yaml` | Hand-written for cases the public specs miss (security schemes and inheritance, shared inline schemas, `allOf` with `additionalProperties`) |
| `swagger-petstore-v3.yaml` | [swagger-api/swagger-petstore](https://github.com/swagger-api/swagger-petstore/blob/5cb909fc7780bc708151bce0014939acba8b212a/src/main/resources/openapi.yaml), commit `5cb909fc7780bc708151bce0014939acba8b212a`, Apache-2.0 |

The specs in `example/lib/src/api/*.openapi.yaml` are tested as well.

Specs listed in `test/golden_test.dart` as known failures crash the generator
today. Their test checks that they still fail in the same stage (parsing or
generating), so a fix shows up as a test failure that asks for a golden file
to be added.
