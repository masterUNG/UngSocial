import 'package:flutter/material.dart';

class MyConstant {
  //field
  static Color primary = Color.fromARGB(255, 13, 103, 37);
  static Color dark = const Color.fromARGB(255, 6, 47, 2);
  static Color light = const Color.fromARGB(255, 103, 239, 18);
  static Color active = const Color.fromARGB(255, 176, 23, 193);

  //method

  BoxDecoration planBox() {
    return BoxDecoration(color: light.withOpacity(0.25));
  }

  TextStyle h1Style() {
    return TextStyle(
      color: dark,
      fontSize: 36,
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle h2Style() {
    return TextStyle(
      color: dark,
      fontSize: 18,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle h3Style() {
    return TextStyle(
      color: dark,
      fontSize: 14,
      fontWeight: FontWeight.normal,
    );
  }

  TextStyle h3ActiveStyle() {
    return TextStyle(
      color: active,
      fontSize: 14,
      fontWeight: FontWeight.w500,
    );
  }
}
