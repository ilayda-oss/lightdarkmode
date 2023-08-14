import 'package:day_night_switch/day_night_switch.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:yeni/theme.dart';

import 'homepage.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp(
            theme: ThemeData(
              primaryColor: themeProvider.primaryColor,
              appBarTheme: AppBarTheme(
                backgroundColor: themeProvider.appBarColor,
              ),
              brightness: themeProvider.isDarkMode
                  ? Brightness.light
                  : Brightness.light,
            ),
            home: HomePage(),
          );
        },
      ),
    );
  }
}
