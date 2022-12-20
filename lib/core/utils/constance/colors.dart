import 'package:flutter/material.dart';

class AppColor {
  AppColor();

  Color _primeColorInLightMode = Colors.indigo.shade300;
  Color _iconColorLightMode = Colors.black;
  Color _textColorLightMode = Colors.black;
  Color _backgroundColorLightMode = Colors.white;

  Color getBackgroundColorLightMode() => _backgroundColorLightMode;

  Color getTextColorLightMode() => _textColorLightMode;

  Color getIconColorLightMode() => _iconColorLightMode;

  Color getPrimeColorInLightMode() => _primeColorInLightMode;
}
