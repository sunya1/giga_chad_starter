

import 'package:giga_chad_starter/core/helpers/match.dart';
import 'package:giga_chad_starter/core/helpers/number_extension.dart';

enum HttpStatusCodeType {
  informational,
  success,
  redirection,
  clientError,
  serverError,
}

class HttpStatusCode {
  const HttpStatusCode(this.code, this.type);

  final int code;
  final HttpStatusCodeType type;

  factory HttpStatusCode.fromCode(int code) {
    final type = condition(
      {
        () => code.isInRange(100, 199): () => HttpStatusCodeType.informational,
        () => code.isInRange(200, 299): () => HttpStatusCodeType.success,
        () => code.isInRange(300, 399): () => HttpStatusCodeType.redirection,
        () => code.isInRange(400, 499): () => HttpStatusCodeType.clientError,
      },
      orElse: () => HttpStatusCodeType.serverError,
    );

    return HttpStatusCode(code, type);
  }
}
