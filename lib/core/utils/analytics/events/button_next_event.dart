// Analytics event when user clicked


import 'package:giga_chad_starter/core/utils/analytics/analytics_builder.dart';
import 'package:giga_chad_starter/core/utils/analytics/analytics_event.dart';
import 'package:giga_chad_starter/core/utils/analytics/analytics_property.dart';

base class ButtonNextEvent extends AnalyticsEvent {
  final String nameElement;
  final String? productType;
  final String? nameBank;

  const ButtonNextEvent({
    required super.screenName,
    this.nameElement = 'button_without_name',
    this.productType,
    this.nameBank,
  });

  @override
  String get name => 'button_next';

  @override
  void buildProperties(AnalyticsBuilder builder) {
    super.buildProperties(builder);
    builder.add(StringAnalyticsProperty('name_element', nameElement));
    if (productType != null) {
      builder.add(StringAnalyticsProperty('product_type', productType!));
    }
    if (nameBank != null) {
      builder.add(StringAnalyticsProperty('bank_name', nameBank!));
    }
  }
}
