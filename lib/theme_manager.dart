

import 'package:flutter/material.dart';

class ThemeManager extends ChangeNotifier{

  //Initialization of themeMode
  ThemeMode _themeMode = ThemeMode.light;

  //Getter method for themeMode
  ThemeMode get themeMode {
    return _themeMode;
  }

  //setter
  void changeTheme(bool isDark){
    _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
  @override
  void addListener(VoidCallback listener) {
    print("ADD LISTENER");
    super.addListener(listener);
  }



}