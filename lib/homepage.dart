import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeni/theme.dart';
import 'package:yeni/theme_modifier.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      backgroundColor: themeProvider.bodyColor,
      appBar: AppBar(
        title: Text(
          'Custom AppBar Example',
          style: TextStyle(color: themeProvider.textColor),
        ),
        actions: [
          ThemeModifier(),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              themeProvider.isDarkMode
                  ? 'lib/assets/dark_image.png'
                  : 'lib/assets/light_image.png',
              width: 150,
              height: 150,
            ),
            SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Image.asset(
                'lib/assets/home.png',
                width: 24,
                height: 24,
                color: themeProvider.buttonColor,
              ),
              label: Text('Ana Sayfa'),
              style: ElevatedButton.styleFrom(
                primary: themeProvider.isDarkMode ? Colors.yellow : null,
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Image.asset(
                'lib/assets/setting.png',
                width: 24,
                height: 24,
                color: themeProvider.buttonColor,
              ),
              label: Text('Ayarlar'),
              style: ElevatedButton.styleFrom(
                primary: themeProvider.isDarkMode ? Colors.yellow : null,
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Image.asset(
                'lib/assets/profile.png',
                width: 24,
                height: 24,
                color: themeProvider.buttonColor,
              ),
              label: Text('Profil'),
              style: ElevatedButton.styleFrom(
                primary: themeProvider.isDarkMode ? Colors.yellow : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
