import 'package:flutter/material.dart';

Color kbgColor = Color.fromRGBO(0, 12, 123, 1);
Color kAcctBtnColor = Color.fromRGBO(184, 191, 255, 1);

Map<int, Color> kallColor = {
  50: Color.fromRGBO(0, 12, 123, 0),
  100: Color.fromRGBO(255, 79, 79, 1), //red
  200: Color.fromRGBO(77, 94, 255, 1), //blue
  300: Color.fromRGBO(255, 255, 255, 5), //white
  400: Color.fromRGBO(77, 94, 255, 1), //FaB bg_btn ada
  500: Color.fromRGBO(24, 37, 154, 1), //Most popular Container
  600: Color.fromRGBO(184, 191, 255, 1), //Fab Add Icon
  700: Color.fromRGBO(136, 14, 79, .8),
  800: Color.fromRGBO(136, 14, 79, .9),
  900: Color.fromRGBO(136, 14, 79, 1),
};

MaterialColor kdefaultColor = MaterialColor(50, kallColor);
TextStyle kbodyTextStyle = TextStyle(
  color: Colors.white,
);
