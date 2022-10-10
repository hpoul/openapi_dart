import 'package:build/build.dart';
import 'package:openapi_code_builder/src/openapi_code_builder.dart';

export 'package:openapi_code_builder/src/openapi_code_builder.dart'
    show OpenApiLibraryGenerator, OpenApiCodeBuilderUtils;

Builder openapiCodeBuilder(BuilderOptions options) {
  return OpenApiCodeBuilder(
    orderDirectives: true,
    useNullSafetySyntax: true,
    generateProvider: options.config['generateProvider'] as bool? ?? false,
    providerNamePrefix: options.config['providerNamePrefix'] as String? ?? '',
    ignoreSecuritySchemes:
        options.config['ignoreSecuritySchemes'] as bool? ?? false,
  );
}
