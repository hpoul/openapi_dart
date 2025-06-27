## 1.6.0+2

* Add ignore `annotate_overrides`.

## 1.6.0+1

* Support for restricted `additionalProperties`
* Support for json responses of type String (instead of Object/Array).

## 1.5.0

* Support for recursive schemas. (A class referencing itself).

## 1.4.0

* Make constructors for generated classes `const`.

## 1.3.3

* Support for `application/json` requests with primitive body types.

## 1.3.2+1

* Upgrade `openapi_base` dependency.

## 1.3.2

* Support `additionalProperties` for inherited models/schemas.

## 1.3.1

* use import `riverpod/riverpod.dart` instead of `hooks_riverpod`

## 1.3.0

* Update SDK Constraint to `>= 3.2.0 <4.0.0`
* add `onElse` to `map` functions and allow a return value.
* Make base Response classes `sealed`.

## 1.2.0

* Support `DateTime` format for parameters.

## 1.1.4+4

* Add option to ignore security schemes.

## 1.1.4+1

* Client: generate riverpod `.autoDispose` providers.

## 1.1.4

* Client Only: Add support for array response types.

## 1.1.3+2

* Don't include optional non-nullable json properties when null.

## 1.1.3+1

* support encoding of optional uuid parameters.
* Added option to generate `StreamProvider` for integration with riverpod. (TODO: add documentation)

## 1.1.2+1

* Fix optional enum conversion.

## 1.1.2

* Support for enums outside of arrays
* Support for number type.

## 1.1.1+1

* Upgrade dependencies, fix analysis warnings.

## 1.1.1

* Improve handling of enum components.

## 1.1.0

* Migrate to null safety.

## 1.0.1

* Support for binary request body.
* Updated dependencies.

## 1.0.0

* Cleanup post-nnbd: Removed many forced null unwraps.

## 0.1.4+2

* Upgrade dependencies, fixed warnings.

## 0.1.4+1

* Add support for `uuid` format.

## 0.1.2

- Support for freeform `additionalProperties`

## 0.1.1

- Better URL handling
- Improve response object.

## 0.1.0

- Initial version

