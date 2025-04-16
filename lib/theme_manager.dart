

import 'package:flutter/material.dart';

class ThemeManager extends ChangeNotifier{

  //Initialization of themeMode
  ThemeMode _themeMode = ThemeMode.light;

  //Getter method for themeMode
  get themeMode {
    return _themeMode;
  }

  //setter
  void changeTheme(bool isDark){
    _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

}