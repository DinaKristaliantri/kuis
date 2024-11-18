import 'package:flutter/material.dart';

class ThemeModel with ChangeNotifier {
  // Default theme
  ThemeData _currentTheme = ThemeData.light().copyWith(
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    buttonTheme: ButtonThemeData(buttonColor: Colors.blue),
  );

  // Font default
  TextStyle _currentFont = TextStyle(fontFamily: 'Roboto');

  ThemeData get currentTheme => _currentTheme;
  TextStyle get currentFont => _currentFont;

  // Set theme
  void setTheme(String theme) {
    switch (theme) {
      case 'Theme A':
        _currentTheme = ThemeData.light().copyWith(
          primaryColor: Colors.blue,
          scaffoldBackgroundColor: Colors.white,
        );
        break;
      case 'Theme B':
        _currentTheme = ThemeData.dark().copyWith(
          primaryColor: Colors.green,
          scaffoldBackgroundColor: Colors.black,
        );
        break;
      default:
        _currentTheme = ThemeData.light();
    }
    notifyListeners();
  }

  // Set font
  void setFont(String font) {
    switch (font) {
      case 'Font A':
        _currentFont = TextStyle(fontFamily: 'Roboto');
        break;
      default:
        _currentFont = TextStyle(fontFamily: 'Roboto');
    }
    notifyListeners();
  }
}
