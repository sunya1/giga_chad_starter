

import 'package:giga_chad_starter/core/utils/analytics/analytics_builder.dart';
import 'package:giga_chad_starter/core/utils/analytics/analytics_event.dart';
import 'package:giga_chad_starter/core/utils/analytics/analytics_property.dart';

base class ButtonCvrEvent extends AnalyticsEvent {
  final String nameElement;

  const ButtonCvrEvent({
    required super.screenName,
    required this.nameElement,
  });

  @override
  String get name => 'button_cvr';

  @override
  void buildProperties(AnalyticsBuilder builder) {
    super.buildProperties(builder);
    builder.add(StringAnalyticsProperty('name_element', nameElement));
  }
}
