import 'package:flutter/material.dart';


///LIGHT THEME
ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.teal,
    foregroundColor: Colors.white,
  ),
    switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.all<Color>(Colors.tealAccent)
    ),
  scaffoldBackgroundColor: Colors.green[100],
  sliderTheme: SliderThemeData(
    activeTrackColor: Colors.tealAccent,
    thumbColor: Colors.tealAccent
  ),
);

///DARK THEME

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.pink,
    foregroundColor: Colors.white,
  ),
  switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all<Color>(Colors.pink)
  ),
  scaffoldBackgroundColor: Colors.black54,
  sliderTheme: SliderThemeData(
      activeTrackColor: Colors.pink,
      thumbColor: Colors.pink
  ),
);