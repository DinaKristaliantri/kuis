import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme_provider.dart'; // Pastikan path ini benar

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Choose Theme:', style: TextStyle(fontSize: 18)),
            ListTile(
              title: const Text('Theme A'),
              leading: Radio<ThemeData>(
                value: ThemeData.light().copyWith(
                  primaryColor: Colors.blue,
                  scaffoldBackgroundColor: Colors.white,
                ),
                groupValue: themeProvider.currentTheme,
                onChanged: (value) {
                  themeProvider.setTheme(value!);
                },
              ),
            ),
            ListTile(
              title: const Text('Theme B'),
              leading: Radio<ThemeData>(
                value: ThemeData.dark().copyWith(
                  primaryColor: Colors.green,
                  scaffoldBackgroundColor: Colors.black,
                ),
                groupValue: themeProvider.currentTheme,
                onChanged: (value) {
                  themeProvider.setTheme(value!);
                },
              ),
            ),
            ListTile(
              title: const Text('Theme C'),
              leading: Radio<ThemeData>(
                value: ThemeData.light().copyWith(
                  primaryColor: Colors.purple,
                  scaffoldBackgroundColor: Colors.grey[100],
                ),
                groupValue: themeProvider.currentTheme,
                onChanged: (value) {
                  themeProvider.setTheme(value!);
                },
              ),
            ),
            const Divider(),
            const Text('Choose Font:', style: TextStyle(fontSize: 18)),
            ListTile(
              title: const Text('Roboto'),
              leading: Radio<TextStyle>(
                value: TextStyle(fontFamily: 'Roboto'),
                groupValue: themeProvider.currentFont,
                onChanged: (value) {
                  themeProvider.setFont(value!);
                },
              ),
            ),
            ListTile(
              title: const Text('Lobster'),
              leading: Radio<TextStyle>(
                value: TextStyle(fontFamily: 'Lobster'),
                groupValue: themeProvider.currentFont,
                onChanged: (value) {
                  themeProvider.setFont(value!);
                },
              ),
            ),
            ListTile(
              title: const Text('Poppins'),
              leading: Radio<TextStyle>(
                value: TextStyle(fontFamily: 'Poppins'),
                groupValue: themeProvider.currentFont,
                onChanged: (value) {
                  themeProvider.setFont(value!);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
