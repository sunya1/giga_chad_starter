import 'package:flutter/material.dart';
import 'package:giga_chad_starter/core/ui_kit/theme/colors/color_scheme.dart';

class DarkColorsScheme extends ColorsScheme {
  const DarkColorsScheme()
      : super(
          primary: const DarkPrimaryPaletteScheme(),
          secondary: const DarkSecondaryPaletteScheme(),
          system: const DarkSystemPaletteScheme(),
          decorative: const DarkDecorativePaletteScheme(),
          constant: const DarkConstantPaletteScheme(),
        );
}

class DarkPrimaryPaletteScheme extends PrimaryPaletteScheme {
  const DarkPrimaryPaletteScheme();

  @override
  Color get primary => const Color(0xFFF40C2E);

  @override
  Color get primaryPressed => const Color(0xFFCF0A28);

  @override
  Color get primaryDisabled => const Color(0xFFF6BAC1);

  @override
  Color get secondary => const Color(0xFF0087E2);

  @override
  Color get secondaryPressed => const Color(0xFF0053C1);

  @override
  Color get secondaryDisabled => const Color(0xFF0C355C);

  @override
  Color get appBg => const Color(0xFF000000);

  @override
  Color get total => const Color(0xFF1F1E1D);

  @override
  Color get amarant => const Color(0xFFFF0127);

  @override
  Color get grey => const Color(0xFFF1F2F6);

  @override
  Color get greyPressed => const Color(0xFF9598A5);

  @override
  Color get greyDisabled => const Color(0xFF5B5D67);

  @override
  Color get semanticGreen => const Color(0xFF35C420);

  @override
  Color get semanticGreenPressed => const Color(0xFF18990C);

  @override
  Color get semanticGreenDisabled => const Color(0xFF24561C);

  @override
  Color get semanticRed => const Color(0xFFFF7B7F);

  @override
  Color get semanticRedFourthOrder => const Color(0xFFC4383C);

  @override
  Color get semanticRedSecondary => const Color(0xFFFF9094);

  @override
  Color get semanticRedTertiary => const Color(0xFFDD3F44);

  @override
  Color get semanticYellow => const Color(0xFFFF9205);

  @override
  Color get semanticYellowPressed => const Color(0xFFD96900);

  @override
  Color get semanticYellowDisabled => const Color(0xFF6B3B00);
}

class DarkSecondaryPaletteScheme extends SecondaryPaletteScheme {
  const DarkSecondaryPaletteScheme();

  @override
  Color get greyMiddle => const Color(0xFF2B2A29);

  @override
  Color get blueDark => const Color(0xFF1E6194);

  @override
  Color get blueLight => const Color(0xFF2D8FB1);

  @override
  Color get secondaryBlue => const Color(0xFF0084DE);
}

class DarkSystemPaletteScheme extends SystemPaletteScheme {
  const DarkSystemPaletteScheme();

  @override
  Color get blue => const Color(0xFF2D8FB1);

  @override
  Color get blueMiddle => const Color(0xFF175266);

  @override
  Color get blueLight => const Color(0xFF1E3740);

  @override
  Color get green => const Color(0xFF5DCF68);

  @override
  Color get greenMiddle => const Color(0xFF3E6D43);

  @override
  Color get greenLight => const Color(0xFF3A513C);

  @override
  Color get yellow => const Color(0xFFF5B841);

  @override
  Color get yellowMiddle => const Color(0xFF836428);

  @override
  Color get yellowLight => const Color(0xFF53452B);

  @override
  Color get red => const Color(0xFFDA0025);

  @override
  Color get redMiddle => const Color(0xFF7A2C39);

  @override
  Color get redLight => const Color(0xFF5E2932);
}


class DarkDecorativePaletteScheme extends DecorativePaletteScheme {
  const DarkDecorativePaletteScheme();

  @override
  Color get blue1 => const Color(0xFF0067CE);

  @override
  Color get blue2 => const Color(0xFF0071D5);

  @override
  Color get blue3 => const Color(0xFF007CDC);

  @override
  Color get blue4 => const Color(0xFF62ACDD);

  @override
  Color get blue5 => const Color(0xFF95C6E8);

  @override
  Color get blue6 => const Color(0xFF144161);

  @override
  Color get blueTags => const Color(0xFF3598DA);

  @override
  Color get green1 => const Color(0xFF28B416);

  @override
  Color get green2 => const Color(0xFF2EBB1B);

  @override
  Color get green3 => const Color(0xFF3ACB24);

  @override
  Color get green4 => const Color(0xFF84D176);

  @override
  Color get green5 => const Color(0xFF9ADA90);

  @override
  Color get green6 => const Color(0xFF142E0F);

  @override
  Color get greenTags => const Color(0xFF65C654);

  @override
  Color get grey1 => const Color(0xFFDCDEE5);

  @override
  Color get grey2 => const Color(0xFFC5C7D0);

  @override
  Color get grey3 => const Color(0xFFA8ABB9);

  @override
  Color get grey4 => const Color(0xFF797B84);

  @override
  Color get grey5 => const Color(0xFF676973);

  @override
  Color get grey6 => const Color(0xFF2D2E32);

  @override
  Color get greyTags => const Color(0xFFDCDEE5);

  @override
  Color get red1 => const Color(0xFFED1022);

  @override
  Color get red2 => const Color(0xFFEC192E);

  @override
  Color get red3 => const Color(0xFFE9233A);

  @override
  Color get red4 => const Color(0xFFED7583);

  @override
  Color get red5 => const Color(0xFFF08C98);

  @override
  Color get red6 => const Color(0xFF611414);

  @override
  Color get redTags => const Color(0xFFE95364);

  @override
  Color get yellow1 => const Color(0xFFFF9B00);

  @override
  Color get yellow2 => const Color(0xFFEE7F00);

  @override
  Color get yellow3 => const Color(0xFFFFB240);

  @override
  Color get yellow4 => const Color(0xFFFFC267);

  @override
  Color get yellow5 => const Color(0xFF903E01);

  @override
  Color get yellow6 => const Color(0xFF3B1C04);

  @override
  Color get yellowTags => const Color(0xFFFFA31A);

  @override
  Color get blueIconLine => const Color(0xFF797B84);
}

class DarkConstantPaletteScheme extends ConstantColors {
  const DarkConstantPaletteScheme();

  @override
  Color get blackWhite => const Color(0xFF000000);

  @override
  Color get blackWhite1 => const Color(0xFF222222);

  @override
  Color get bg => const Color(0xFF181818);

  @override
  Color get constantText => const Color(0xFFF7F7F7);

  @override
  Color get white => const Color(0xFFF7F7F7);

  @override
  Color get black => const Color(0xFF000000);

  @override
  Color get grey => const Color(0xFFF1F2F6);
}

