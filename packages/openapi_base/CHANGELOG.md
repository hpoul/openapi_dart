## 1.3.1+1

* Updated package deps

## 1.3.1

* bump UUID version constraint to support `4.x`

## 1.3.0

* `ResponseMap` now has a return type.

## 1.1.1

* string binary support

## 1.1.0+3

* Update http version constraints.
* Fix dart analysis warnings.

## 1.1.0+2

* Fix optional query parameter #5
* Extend startServer method to accept all io.serve parameter #6 (thanks @Bonnyfication)

## 1.1.0+1

* Fix json conversion.

## 1.1.0

* Require json responses to return dynamic, to support array response objects.

## 1.0.3+2

* Improve "unexpected response" client exception.

## 1.0.3+1

* Support Stream clients.

## 1.0.3

* Support for `number` type.

## 1.0.2+3

* Upgrade dependencies, fix analysis warnings.
=======

## 1.0.2+2

* Handle missing parameters as exception (status 400), not an error (status 500).
* Allow handling of exceptions in middleware.

## 1.0.2+1

* Fix including headers for unknown/error responses.

## 1.0.2

* Allow customizing of the shelf pipeline with additional middleware.

## 1.0.1+4

* introduced `OpenApiHttpStatus` constants.
* Fix sending of binary request data.
* Fix passing on headers to callers.

## 1.0.1

* Support for binary request bodys

## 1.0.0

* Added conflict exception.

## 0.2.0+2

* Fix contentType nullability.

## 0.2.0

* Null safety migration

## 0.1.5+3

* ApiUuid: Implement operator== and hashCode().

## 0.1.5+2

* Allow customizing of http clients, to override user-agent.

## 0.1.5+1

* Fix ApiUuid parsing/encoding in url parameters.

## 0.1.5

* Support for binary responses.

## 0.1.4

* Add support for `uuid` format.

## 0.1.3+3

* Allow usage without dart:io, server implementation
  will not be available.

## 0.1.2

* Support for optional query parameters
* Match the whole path on the server (not prefix matching)
* Improve body types, etc.

## 0.1.1

* More documentation, various extension methods, etc.

## 0.1.0

Initial release
