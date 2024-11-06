// Analytics event when user opened the product view.


import 'package:giga_chad_starter/core/utils/analytics/analytics_builder.dart';
import 'package:giga_chad_starter/core/utils/analytics/analytics_event.dart';
import 'package:giga_chad_starter/core/utils/analytics/analytics_property.dart';

base class ViewElementEvent extends AnalyticsEvent {
  final String nameElement;

  const ViewElementEvent({
    required super.screenName,
    required this.nameElement,
  });

  @override
  String get name => 'view_element';

  @override
  void buildProperties(AnalyticsBuilder builder) {
    super.buildProperties(builder);
    builder.add(StringAnalyticsProperty('name_element', nameElement));
  }
}
