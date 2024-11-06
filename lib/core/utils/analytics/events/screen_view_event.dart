// Analytics event when user closes
import 'package:giga_chad_starter/core/utils/analytics/analytics_event.dart';

base class ScreenViewEvent extends AnalyticsEvent {
  const ScreenViewEvent({required super.screenName});

  @override
  String get name => 'screen_view';
}
