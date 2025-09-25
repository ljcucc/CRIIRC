import 'package:flutter/material.dart';

MaterialColor getMaterialColor(Color color) {
  final int red = (color.r * 255.0).round() & 0xff;
  final int green = (color.g * 255.0).round() & 0xff;
  final int blue = (color.b * 255.0).round() & 0xff;
  final int alpha = (color.a * 255.0).round() & 0xff;

  final Map<int, Color> shades = {
    50: Color.fromARGB(alpha, red, green, blue),
    100: Color.fromARGB(alpha, red, green, blue),
    200: Color.fromARGB(alpha, red, green, blue),
    300: Color.fromARGB(alpha, red, green, blue),
    400: Color.fromARGB(alpha, red, green, blue),
    500: Color.fromARGB(alpha, red, green, blue),
    600: Color.fromARGB(alpha, red, green, blue),
    700: Color.fromARGB(alpha, red, green, blue),
    800: Color.fromARGB(alpha, red, green, blue),
    900: Color.fromARGB(alpha, red, green, blue),
  };

  return MaterialColor(color.toARGB32(), shades);
}

int getLayoutInt(BuildContext context) {
  var layoutInt = 1;

  final width = MediaQuery.of(context).size.width;
  final orientation = MediaQuery.of(context).orientation;

  // layout based on screen size ( if landscape )
  if (width < 750) {
    layoutInt = 1;
  } else if (width < 1200) {
    layoutInt = 2;
  } else {
    layoutInt = 3;
  }

  // overwrite layout based on orientation
  if (orientation == Orientation.portrait) {
    layoutInt = 1;
  }

  return layoutInt;
}
