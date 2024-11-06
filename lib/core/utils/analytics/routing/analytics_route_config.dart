import 'package:giga_chad_starter/core/utils/analytics/analytics_event.dart';

abstract class AnalyticsRouteConfig {
  const AnalyticsRouteConfig();

  void onRouteChanged(
    AnalyticsScreenName analyticsRoute,
  ) {}
}
