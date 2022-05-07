import 'package:flutter/material.dart';

class UaColors {
  const UaColors();

  static const Color mainColor = Color(0xFF433985);
  static const Color secondColor = Color(0xFFA676DB);
  static const Color background = Color(0xFFF7F6FB);
  static const Color titleColor = Color(0xFF3f4355);
  static const Color subTitle = Color(0xFFa4adbe);
  static const Color textMain = Color(0xFF848484);
  static const Color greyBack = Color(0xFFced4db);
  static const Color white = Color(0xFFFFFFFF);
  static const Color purpleDark = Color(0xFF2C2252);

  static const Color darkBlue = Color.fromRGBO(8, 31, 60, 1);
  static const Color mediumBlue = Color(0xFF2C2252);

  static const Color darkTextColor = Color(0xFF2C2252);
  static const Color mediumTextColor = Color.fromARGB(162, 0, 0, 0);

  static const primaryGradient = LinearGradient(
    colors: [
      // Color.fromARGB(255, 124, 116, 194),
      // Color.fromARGB(255, 108, 142, 216)
      Color.fromRGBO(75, 92, 113, 1),
      Color.fromARGB(255, 132, 143, 156),
    ],
    //  stops: const [0.0, 1.0],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const attentionGradient = LinearGradient(
    colors: [
      // Color.fromARGB(255, 124, 116, 194),
      // Color.fromARGB(255, 108, 142, 216)
      Color.fromARGB(255, 90, 226, 56),
      Color.fromARGB(255, 142, 230, 120),
    ],
    //  stops: const [0.0, 1.0],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
