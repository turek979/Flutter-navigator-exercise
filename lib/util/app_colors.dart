import 'dart:ui';

class AppColors{
  static final appPurple = HexColor("#471AA0");
  static final appLightPurple = HexColor("#BB84E8");
  static final appBorderPurple = HexColor("9747FF");
}

class HexColor extends Color{
  static int _getColorFromHex(String hexColor){
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6){
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}