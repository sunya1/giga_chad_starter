import 'package:giga_chad_starter/core/helpers/datetime_helper.dart';
import 'package:intl/intl.dart';

abstract class AnalyticsConfig {
  const AnalyticsConfig._();

  static Map<String, String> get defaultParams => {
        'date': DateFormat('dd.MM.yyyy').format(_date),
        'time':
            '${DateFormat('HH:mm:ss').format(_date)} ${_date.getTimeZoneOffset()}',
        'app_environment': 'prod',
      };

  static DateTime get _date => DateTime.now();
}
