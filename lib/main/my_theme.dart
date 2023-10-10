import 'package:flutter/material.dart';

class MyTheme {
  static Color prim = Color(0xffB7935F);
  static Color primdark = Color(0xff141A2E);
  static Color black = Color(0xff242424);
  static Color white = Color(0xffe7e1e1);
  static Color yellow = Color(0xffFACC1D);


  static ThemeData lighttheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: prim,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: black,
      ),
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      titleMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
      titleSmall: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      showUnselectedLabels: true,
    ),
  );
  static ThemeData darkthem = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: primdark,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: white,
      ),
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      titleMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      ),
      titleSmall: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: Colors.yellow,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.yellow,
      unselectedItemColor: Colors.white,
      showUnselectedLabels: true,
    ),
  );
}
