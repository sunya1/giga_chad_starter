import 'dart:io' show Platform;

class AppFontFamily {
  AppFontFamily._();

  static String avantGarde = 'packages/hcb_ui_kit/avant_garde';
  static String openSans = 'packages/hcb_ui_kit/open_sans';
  static String alsHauss = 'packages/hcb_ui_kit/als_hauss';

  static String? get systemsFontFamily {
    if (Platform.isAndroid) {
      return 'packages/hcb_ui_kit/roboto_flex';
    }
    if (Platform.isIOS) {
      return 'packages/hcb_ui_kit/sf_pro';
    }
    return openSans;
  }
}
