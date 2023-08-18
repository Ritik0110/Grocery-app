import 'package:shared_preferences/shared_preferences.dart';

class DarkThemePrefs{
  static const themeMode = "themeMode";
  setDarkTheme(bool val)async{
    SharedPreferences preferences =await SharedPreferences.getInstance();
    preferences.setBool(themeMode, val);
  }

  Future<bool> getTheme()async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var value = preferences.getBool(themeMode);
    return value??true;
  }
}