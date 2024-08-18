import 'package:flutter/material.dart';

class ColorPalette {
  static const Color primaryColor = Color(0xff6155CC);
  static const Color secondColor = Color(0xff8F67E8);
  static const Color yellowColor = Color(0xffFE9C5E);

  static const Color dividerColor = Color(0xFFE5E7EB);
  static const Color text1Color = Color(0xFF323B4B);
  static const Color subTitleColor = Color(0xFF838383);
  static const Color backgroundScaffoldColor = Color(0xFFF2F2F2);

  static const Color peachGold = Color(0xFFFE9C5E);
  static const Color lavenderWhite = Color(0xFFE0DDF5);
  static const Color blue = Color(0xFF0D0BCC);

  static Color kPrimary = const Color(0XFF1460F2);
  static Color kWhite = const Color(0XFFFFFFFF);
  static Color kBackground = const Color(0XFFFAFAFA);
  static Color kGrayscaleDark100 = const Color(0XFF1C1C1E);
  static Color kLine = const Color(0XFFEBEBEB);
  static Color kBackground2 = const Color(0XFFF6F6F6);
  static Color kGrayscale40 = const Color(0XFFAEAEB2);
}

class Gradients {
  static const Gradient defaultGradientBackground = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomLeft,
    colors: [
      ColorPalette.secondColor,
      ColorPalette.primaryColor,
    ],
  );
}
