import 'package:flutter/material.dart';
import 'package:giga_chad_starter/core/ui_kit/theme/colors/color_scheme.dart';
import 'package:giga_chad_starter/core/ui_kit/theme/colors/dark_color_scheme.dart';
import 'package:giga_chad_starter/core/ui_kit/theme/colors/light_color_scheme.dart';
import 'package:giga_chad_starter/core/ui_kit/theme/textStyle/app_text_styles.dart';

abstract class AppThemeScheme {
  final ColorsScheme? appColorsScheme;
  final Brightness? brightness;

  const AppThemeScheme({
    this.brightness,
    this.appColorsScheme,
  });

  ThemeData get getTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      scaffoldBackgroundColor: appColorsScheme?.constant.blackWhite,
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: appColorsScheme?.constant.blackWhite,
        iconTheme: IconThemeData(
          color: appColorsScheme?.primary.amarant,
        ),
        titleTextStyle: AppTextStyles.header3.copyWith(
          color: appColorsScheme?.constant.constantText,
        ),
      ),
      textTheme: TextTheme(
        bodyMedium: TextStyle(
          color: appColorsScheme?.constant.constantText,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        selectedLabelStyle: AppTextStyles.label13RG,
        unselectedLabelStyle: AppTextStyles.label13RG,
      ),
    );
  }
}

/// light theme
class LightTheme extends AppThemeScheme {
  LightTheme()
      : super(
          brightness: Brightness.light,
          appColorsScheme: const LightColorsScheme(),
        );

  @override
  ThemeData get getTheme {
    final getTheme = super.getTheme;
    final bottomNavigationBarTheme = getTheme.bottomNavigationBarTheme.copyWith(
      backgroundColor: const Color(0xFFF1F2F6),
      selectedItemColor: const Color(0xFF444552),
      unselectedItemColor: const Color(0xFFA8ABB9),
    );

    return getTheme.copyWith(
      bottomNavigationBarTheme: bottomNavigationBarTheme,
    );
  }
}

/// dark theme
class DarkTheme extends AppThemeScheme {
  DarkTheme()
      : super(
          brightness: Brightness.dark,
          appColorsScheme: const DarkColorsScheme(),
        );

  @override
  ThemeData get getTheme {
    final getTheme = super.getTheme;
    final bottomNavigationBarTheme = getTheme.bottomNavigationBarTheme.copyWith(
      backgroundColor: const Color(0xFF292928),
      selectedItemColor: const Color(0xFFFFFFFF),
      unselectedItemColor: const Color(0xFF797B84),
    );
    return getTheme.copyWith(
      bottomNavigationBarTheme: bottomNavigationBarTheme,
    );
  }
}
