import 'package:flutter/material.dart';

class appconfigprocider extends ChangeNotifier {
  String applang = 'en';
  ThemeMode appTheme = ThemeMode.light;

  void chanelang(String newlang) {
    if (applang == newlang) {
      return;
    }
    applang = newlang;
    notifyListeners();
  }

  void changetheme(ThemeMode newmode) {
    if (appTheme == newmode) {
      return;
    }
    appTheme = newmode;
    notifyListeners();
  }
}
