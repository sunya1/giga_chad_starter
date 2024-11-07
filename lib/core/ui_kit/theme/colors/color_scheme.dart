import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class ColorsScheme with EquatableMixin {
  // Primary palette
  final PrimaryPaletteScheme primary;

  // Secondary palette
  final SecondaryPaletteScheme secondary;

  // System palette
  final SystemPaletteScheme system;

  // Decorative palette
  final DecorativePaletteScheme decorative;

  // Constant palette
  final ConstantColors constant;

  const ColorsScheme({
    required this.primary,
    required this.secondary,
    required this.system,
    required this.decorative,
    required this.constant,
  });

  @override
  List<Object?> get props => [
        primary,
        secondary,
        system,
        decorative,
        constant,
      ];
}

abstract class PrimaryPaletteScheme with EquatableMixin {
  const PrimaryPaletteScheme();

  Color get primary;

  Color get primaryPressed;

  Color get primaryDisabled;

  Color get secondary;

  Color get secondaryPressed;

  Color get secondaryDisabled;

  Color get semanticGreen;

  Color get semanticGreenPressed;

  Color get semanticGreenDisabled;

  Color get semanticYellow;

  Color get semanticYellowPressed;

  Color get semanticYellowDisabled;

  Color get semanticRed;

  Color get semanticRedSecondary;

  Color get semanticRedTertiary;

  Color get semanticRedFourthOrder;

  Color get grey;

  Color get greyPressed;

  Color get greyDisabled;

  Color get appBg;

  Color get total;

  Color get amarant;

  @override
  List<Object?> get props => [
        primary,
        primaryPressed,
        primaryDisabled,
        secondary,
        secondaryPressed,
        secondaryDisabled,
        semanticGreen,
        semanticGreenPressed,
        semanticGreenDisabled,
        semanticYellow,
        semanticYellowPressed,
        semanticYellowDisabled,
        semanticRed,
        semanticRedSecondary,
        semanticRedTertiary,
        semanticRedFourthOrder,
        grey,
        greyPressed,
        greyDisabled,
        appBg,
        total,
        amarant,
      ];
}

abstract class SecondaryPaletteScheme with EquatableMixin {
  const SecondaryPaletteScheme();

  Color get greyMiddle;

  Color get blueDark;

  Color get blueLight;

  Color get secondaryBlue;

  @override
  List<Object?> get props => [
        greyMiddle,
        blueDark,
        blueLight,
        secondaryBlue,
      ];
}

abstract class SGGreyPaletteScheme with EquatableMixin {
  const SGGreyPaletteScheme();

  Color get grey1;

  Color get grey2;

  Color get grey3;

  Color get grey4;

  Color get grey5;

  Color get grey6;

  @override
  List<Object?> get props => [grey1, grey2, grey3, grey4, grey5, grey6];
}

abstract class SystemPaletteScheme with EquatableMixin {
  const SystemPaletteScheme();

  Color get blue;

  Color get blueMiddle;

  Color get blueLight;

  Color get green;

  Color get greenMiddle;

  Color get greenLight;

  Color get yellow;

  Color get yellowMiddle;

  Color get yellowLight;

  Color get red;

  Color get redMiddle;

  Color get redLight;

  @override
  List<Object?> get props => [
        blue,
        blueMiddle,
        blueLight,
        green,
        greenMiddle,
        greenLight,
        yellow,
        yellowMiddle,
        yellowLight,
        red,
        redMiddle,
        redLight,
      ];
}



abstract class ClickPaletteScheme with EquatableMixin {
  const ClickPaletteScheme();

  Color get red;

  Color get grayMiddle;

  Color get grey;

  Color get blue;

  Color get green;

  Color get yellow;

  @override
  List<Object?> get props => [red, grayMiddle, grey, blue, green, yellow];
}

abstract class DecorativePaletteScheme with EquatableMixin {
  const DecorativePaletteScheme();

  Color get red1;

  Color get red2;

  Color get red3;

  Color get red4;

  Color get red5;

  Color get red6;

  Color get redTags;

  Color get blue1;

  Color get blue2;

  Color get blue3;

  Color get blue4;

  Color get blue5;

  Color get blue6;

  Color get blueTags;

  Color get green1;

  Color get green2;

  Color get green3;

  Color get green4;

  Color get green5;

  Color get green6;

  Color get greenTags;

  Color get yellow1;

  Color get yellow2;

  Color get yellow3;

  Color get yellow4;

  Color get yellow5;

  Color get yellow6;

  Color get yellowTags;

  Color get blueIconLine;

  Color get grey1;

  Color get grey2;

  Color get grey3;

  Color get grey4;

  Color get grey5;

  Color get grey6;

  Color get greyTags;

  @override
  List<Object?> get props => [
        red1,
        red2,
        red3,
        red4,
        red5,
        red6,
        redTags,
        blue1,
        blue2,
        blue3,
        blue4,
        blue5,
        blue6,
        blueTags,
        green1,
        green2,
        green3,
        green4,
        green5,
        green6,
        greenTags,
        yellow1,
        yellow2,
        yellow3,
        yellow4,
        yellow5,
        yellow6,
        yellowTags,
        grey1,
        grey2,
        grey3,
        grey4,
        grey5,
        grey6,
        greyTags,
      ];
}

abstract class ConstantColors with EquatableMixin {
  const ConstantColors();
  Color get blackWhite;
  Color get blackWhite1;
  Color get white;
  Color get bg;
  Color get constantText;
  Color get black;
  Color get grey;

  @override
  List<Object?> get props =>
      [blackWhite, blackWhite1, bg, constantText, white, black, grey];
}


