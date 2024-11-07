import 'package:flutter/material.dart';
import 'package:giga_chad_starter/core/ui_kit/theme/colors/color_scheme.dart';

class LightColorsScheme extends ColorsScheme {
  const LightColorsScheme()
      : super(
          primary: const LightPrimaryPaletteScheme(),
          secondary: const LightSecondaryPaletteScheme(),
          system: const LightSystemPaletteScheme(),
          decorative: const LightDecorativePaletteScheme(),
          constant: const LightConstantPaletteScheme(),
        );
}

class LightPrimaryPaletteScheme extends PrimaryPaletteScheme {
  const LightPrimaryPaletteScheme();

  @override
  Color get primary => const Color(0xFFDC0A28);

  @override
  Color get primaryPressed => const Color(0xFFB70922);

  @override
  Color get primaryDisabled => const Color(0xFFF6BAC1);

  @override
  Color get secondary => const Color(0xFF0084DE);

  @override
  Color get secondaryPressed => const Color(0xFF0047A7);

  @override
  Color get secondaryDisabled => const Color(0xFF80BBE4);

  @override
  Color get appBg => const Color(0xFFFFFFFF);

  @override
  Color get total => const Color(0xFFFFFFFF);

  @override
  Color get amarant => const Color(0xFFFF0127);

  @override
  Color get semanticGreen => const Color(0xFF30AE1C);

  @override
  Color get semanticGreenPressed => const Color(0xFF14810A);

  @override
  Color get semanticGreenDisabled => const Color(0xFFC2E9BC);

  @override
  Color get semanticYellow => const Color(0xFFF18A00);

  @override
  Color get semanticYellowPressed => const Color(0xFFBF5D00);

  @override
  Color get semanticYellowDisabled => const Color(0xFFFFCD80);

  @override
  Color get semanticRed => const Color(0xFFFF6166);

  @override
  Color get semanticRedSecondary => const Color(0xFFFF9094);

  @override
  Color get semanticRedTertiary => const Color(0xFFFFC3C6);

  @override
  Color get semanticRedFourthOrder => const Color(0xFFFFF6F7);

  @override
  Color get grey => const Color(0xFF232731);

  @override
  Color get greyPressed => const Color(0xFF1B1F29);

  @override
  Color get greyDisabled => const Color(0xFFB3B5C0);
}

class LightSecondaryPaletteScheme extends SecondaryPaletteScheme {
  const LightSecondaryPaletteScheme();

  @override
  Color get greyMiddle => const Color(0xFFDCDEE7);

  @override
  Color get blueDark => const Color(0xFF1E6194);

  @override
  Color get blueLight => const Color(0xFF2D8FB1);

  @override
  Color get secondaryBlue => const Color(0xFF0084DE);
}

class LightSystemPaletteScheme extends SystemPaletteScheme {
  const LightSystemPaletteScheme();

  @override
  Color get blue => const Color(0xFF2D8FB1);

  @override
  Color get blueMiddle => const Color(0xFFC4E0E9);

  @override
  Color get blueLight => const Color(0xFFEAF4F7);

  @override
  Color get green => const Color(0xFF5DCF68);

  @override
  Color get greenMiddle => const Color(0xFFB8EABD);

  @override
  Color get greenLight => const Color(0xFFDFF5E1);

  @override
  Color get yellow => const Color(0xFFF5B841);

  @override
  Color get yellowMiddle => const Color(0xFFFBDD9A);

  @override
  Color get yellowLight => const Color(0xFFFFF6D6);

  @override
  Color get red => const Color(0xFFDA0025);

  @override
  Color get redMiddle => const Color(0xFFF4B8C2);

  @override
  Color get redLight => const Color(0xFFFBE6E9);
}

class LightDecorativePaletteScheme extends DecorativePaletteScheme {
  const LightDecorativePaletteScheme();

  @override
  Color get blue1 => const Color(0xFF005AB4);

  @override
  Color get blue2 => const Color(0xFF0064BB);

  @override
  Color get blue3 => const Color(0xFF006FC2);

  @override
  Color get blue4 => const Color(0xFF4DA0D9);

  @override
  Color get blue5 => const Color(0xFF80BBE4);

  @override
  Color get blue6 => const Color(0xFFB3D6EF);

  @override
  Color get blueTags => const Color(0xFF268BD0);

  @override
  Color get green1 => const Color(0xFF229D13);

  @override
  Color get green2 => const Color(0xFF28A518);

  @override
  Color get green3 => const Color(0xFF35B520);

  @override
  Color get green4 => const Color(0xFF72CB63);

  @override
  Color get green5 => const Color(0xFF9ADA90);

  @override
  Color get green6 => const Color(0xFFE7F6E4);

  @override
  Color get greenTags => const Color(0xFF53C041);

  @override
  Color get grey1 => const Color(0xFF313235);

  @override
  Color get grey2 => const Color(0xFF51525A);

  @override
  Color get grey3 => const Color(0xFF717484);

  @override
  Color get grey4 => const Color(0xFF9598A5);

  @override
  Color get grey5 => const Color(0xFFA8ABB9);

  @override
  Color get grey6 => const Color(0xFFDCDEE5);

  @override
  Color get greyTags => const Color(0xFF797B84);

  @override
  Color get red1 => const Color(0xFFD50E1F);

  @override
  Color get red2 => const Color(0xFFD91225);

  @override
  Color get red3 => const Color(0xFFDD162C);

  @override
  Color get red4 => const Color(0xFFEA5E6F);

  @override
  Color get red5 => const Color(0xFFF08C98);

  @override
  Color get red6 => const Color(0xFFFFEAEC);

  @override
  Color get redTags => const Color(0xFFE63C50);

  @override
  Color get yellow1 => const Color(0xFFA94800);

  @override
  Color get yellow2 => const Color(0xFFD47200);

  @override
  Color get yellow3 => const Color(0xFFFFAA26);

  @override
  Color get yellow4 => const Color(0xFFFFB94D);

  @override
  Color get yellow5 => const Color(0xFFFFE1B3);

  @override
  Color get yellow6 => const Color(0xFFFFF3E0);

  @override
  Color get yellowTags => const Color(0xFFFF9B00);

  @override
  Color get blueIconLine => const Color(0xFFFFFFFF);
}

class LightConstantPaletteScheme extends ConstantColors {
  const LightConstantPaletteScheme();

  @override
  Color get blackWhite => const Color(0xFFFFFFFF);

  @override
  Color get blackWhite1 => const Color(0xFFFFFFFF);

  @override
  Color get bg => const Color(0xFFF7F7F9);

  @override
  Color get constantText => const Color(0xFF242424);

  @override
  Color get white => const Color(0xFFF7F7F7);

  @override
  Color get black => const Color(0xFF000000);

  @override
  Color get grey => const Color(0xFFF1F2F6);
}
