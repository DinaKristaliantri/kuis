import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
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
  void setTheme(ThemeData theme) {
    _currentTheme = theme;
    notifyListeners();
  }

  // Set font
  void setFont(TextStyle font) {
    _currentFont = font;
    notifyListeners();
  }
}
