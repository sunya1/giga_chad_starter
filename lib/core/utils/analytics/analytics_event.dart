

import 'package:giga_chad_starter/core/utils/analytics/analytics_builder.dart';
import 'package:giga_chad_starter/core/utils/analytics/analytics_property.dart';

enum AnalyticsScreenName {
  none('none');

  final String screenName;

  const AnalyticsScreenName(this.screenName);
}

final class AnalyticsRawEvent extends AnalyticsEvent {
  final String _name;

  AnalyticsRawEvent({super.screenName, required String name}) : _name = name;

  @override
  String get name => _name;
}

abstract base class AnalyticsEvent {
  final AnalyticsScreenName? screenName;

  const AnalyticsEvent({this.screenName});

  static AnalyticsEvent? fromJson({
    required Map<String, dynamic> event,
    AnalyticsScreenName? screenName,
  }) {
    final hasName =
        event.containsKey('name') || event.containsKey('event_name');

    if (!hasName) return null;

    return AnalyticsRawEvent(
      name: (event['event_name'] as String? ?? event['name'] as String?)!,
      screenName: screenName,
    );
  }

  String get name;

  /// Builds the properties for this event.
  void buildProperties(AnalyticsBuilder builder) {
    if (screenName?.screenName.isNotEmpty ?? false) {
      builder
          .add(StringAnalyticsProperty('screen_name', screenName!.screenName));
    }
  }
}
