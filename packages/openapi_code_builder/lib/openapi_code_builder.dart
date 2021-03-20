import 'package:build/build.dart';
import 'package:openapi_code_builder/src/openapi_code_builder.dart';

export 'package:openapi_code_builder/src/openapi_code_builder.dart'
    show OpenApiLibraryGenerator, OpenApiCodeBuilderUtils;

Builder openapiCodeBuilder(BuilderOptions options) => OpenApiCodeBuilder(
      orderDirectives: true,
      useNullSafetySyntax: true,
    );
