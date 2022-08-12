import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Muli",
    appBarTheme: newMethod(),
    textTheme: newMethod2(),
    inputDecorationTheme: inputDecorationtheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationtheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: BorderSide(color: Color.fromARGB(255, 107, 117, 112)),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    // floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(
      horizontal: 42,
      vertical: 20,
    ),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}

TextTheme newMethod2() {
  return TextTheme(
    bodyText1: TextStyle(color: Color.fromARGB(255, 107, 117, 112)),
    bodyText2: TextStyle(color: Color.fromARGB(255, 107, 117, 112)),
  );
}

AppBarTheme newMethod() {
  return AppBarTheme(
    color: Colors.white,
    elevation: 0,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: Colors.black),
    textTheme: TextTheme(headline6: TextStyle(color: Color(0XF8B8B8B))),
  );
}
