import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dimensions.dart';

class AppColors {
  static const Color black = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);
  static const Color grey = Color(0xFF4D4D4D);
  static const Color searchBackground = Color(0xFF2D353E);
  static const Color contentBackground = Color(0xFF151C23);
  static const Color progressIndicatorBackground = Color(0xFF313339);
  static const Color progressIndicatorForeground = Color(0xFF22D965);
  static const Color blackRussian = Color(0xFF0F131C);
  static const Color hint = Color(0xFF8A8C8E);

  static const Color primary = Color(0xFF00CE7C);
  static const Color primaryLight = Color(0xFF32CD7E);
  static const Color background = Color(0xFF11151A);
}

ThemeData appTheme() => ThemeData(
  primaryColor: AppColors.primary,
  primaryColorLight: AppColors.primaryLight,
  backgroundColor: AppColors.background,
  accentColor: AppColors.primary,
  textTheme: _textTheme(),
);

TextTheme _textTheme() => TextTheme(
    headline6: _titleTextStyle(),
    bodyText1: _bodyTextStyle(),
    caption: _captionTextStyle()
);

TextStyle _titleTextStyle() => GoogleFonts.roboto(
  color: AppColors.white,
  fontSize: Dimensions.TITLE_TEXT_SIZE,
);

TextStyle _bodyTextStyle() => GoogleFonts.roboto(
  color: AppColors.white,
  fontSize: Dimensions.BODY_TEXT_SIZE,
);

TextStyle _captionTextStyle() => GoogleFonts.roboto(
  color: AppColors.hint,
  fontSize: Dimensions.BODY_TEXT_SIZE,
);

extension ThemeGetter on BuildContext {
  TextStyle titleStyle() => Theme.of(this).textTheme.headline6;

  TextStyle bodyTextStyle() => Theme.of(this).textTheme.bodyText1;

  TextStyle captionTextStyle() => Theme.of(this).textTheme.caption;

  Color primaryColor() => Theme.of(this).primaryColor;

  Color primaryColorLight() => Theme.of(this).primaryColorLight;

  Color backgroundColor() => Theme.of(this).backgroundColor;

  Color textColor() => Theme.of(this).textTheme.bodyText1.color;
}

