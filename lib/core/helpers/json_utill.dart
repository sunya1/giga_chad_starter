// ignore_for_file: avoid_classes_with_only_static_members

import 'dart:convert';

class JsonUtils {
  static const _decoder =  JsonDecoder();
  static const _encoder =  JsonEncoder.withIndent('  ');

  static String prettyJson(String input) {
    final object = _decoder.convert(input);
    final prettyString = _encoder.convert(object);

    return prettyString;
  }
}