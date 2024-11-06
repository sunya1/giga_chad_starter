// Analytics event when user clicked


import 'package:giga_chad_starter/core/utils/analytics/analytics_builder.dart';
import 'package:giga_chad_starter/core/utils/analytics/analytics_event.dart';
import 'package:giga_chad_starter/core/utils/analytics/analytics_property.dart';

base class InputEvent extends AnalyticsEvent {
  final String nameElement;
  final String message ; 
  const InputEvent({
    required super.screenName,
    required this.nameElement ,
    required this.message , 
  });

  @override
  String get name => 'input';

  @override
  void buildProperties(AnalyticsBuilder builder) {
    super.buildProperties(builder);
    builder.add(StringAnalyticsProperty('name_element', nameElement));
    builder.add(StringAnalyticsProperty('message', message));
  }
}
