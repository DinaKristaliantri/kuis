import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme_model.dart'; // Pastikan file ini benar
import 'settings_screen.dart'; // Pastikan file ini benar
import 'main_screen.dart'; // Pastikan file ini benar

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeModel(),
      child: Consumer<ThemeModel>(
        builder: (context, themeModel, child) {
          return MaterialApp(
            title: 'Flutter Multi-Theme and Multi-Font',
            theme: themeModel.currentTheme,
            home:
                MainScreen(), // Pastikan ini adalah halaman pertama yang muncul
          );
        },
      ),
    );
  }
}
