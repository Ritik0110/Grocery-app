import 'package:flutter/material.dart';
import 'package:grocery_app/services/dark_theme_pref.dart';

class ThemeProvider with ChangeNotifier{
  bool _isDark = false;
  bool get getDarkTheme => _isDark;
  DarkThemePrefs themePrefs = DarkThemePrefs();

  set setDarkTheme(bool value){
    _isDark = value;
    themePrefs.setDarkTheme(value);
    notifyListeners();
  }


}