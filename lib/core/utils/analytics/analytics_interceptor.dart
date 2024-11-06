import 'dart:async';

import 'package:giga_chad_starter/core/helpers/generic_helpers.dart';
import 'package:giga_chad_starter/core/helpers/json_utill.dart';
import 'package:giga_chad_starter/core/logger/logger.dart';
import 'package:giga_chad_starter/core/utils/analytics/analytics_service.dart';



abstract base class AnalyticsInterceptor {
  const AnalyticsInterceptor();

  /// Intercepts an event before it is reported to the analytics service
  FutureOr<void> afterReport(
    String eventName,
    Map<String, dynamic> event,
  ) {}
}

final class LoggingAnalyticsInterceptor extends AnalyticsInterceptor {
  const LoggingAnalyticsInterceptor({
    required this.reporter,
  });

  // static const _tag = 'Analytics';

  final Reporter reporter;

  @override
  FutureOr<void> afterReport(
    String eventName,
    Map<String, dynamic> event,
  ) {
    final formattedProperties = Map.fromEntries(
      event.entries.map(
        (it) => MapEntry(
          '"${it.key}"',
          '"${it.value}"',
        ),
      ),
    ).toString().let(JsonUtils.prettyJson);

    logger.debug(
      [
        '${reporter.name} analytics event:',
        'name: $eventName',
        'properties: $formattedProperties',
      ].join('\n'),
    );
  }
}
