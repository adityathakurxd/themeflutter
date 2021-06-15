import 'package:flutter/material.dart';
import 'package:themeflutter/theme_preferences.dart';

class ThemeModel extends ChangeNotifier {
  bool _isDark = false;
  ThemePreferences _preferences =  ThemePreferences();
  bool get isDark => _isDark;

  ThemeModel (){
    _isDark = false;
    _preferences = ThemePreferences();
    getPreferences();
  }
  set isDark (bool value){
    _isDark = value;
    _preferences.setTheme(value);
    notifyListeners();
  }
  getPreferences() async {
    _isDark = await _preferences.getTheme();
    notifyListeners();
  }
}