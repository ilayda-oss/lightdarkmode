import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  bool isDarkMode = false;

  void toggleTheme() {
    isDarkMode = !isDarkMode;
    notifyListeners();
  }

  Color get primaryColor => Color.fromARGB(255, 228, 103, 176);
  Color get appBarColor => Color.fromARGB(255, 228, 103, 176);
  Color get bodyColor =>
      isDarkMode ? const Color(0xFF57209D) : Color(0xFFFDE456);
  Color get buttonColor => isDarkMode ? Color(0xFF57209D) : Colors.yellow;
  Color get switchTrackColor => isDarkMode
      ? Color(0xFF57209D)
      : Color(0xFFFDE456); // Track rengi değiştirildi
  Color get switchButtonColor =>
      isDarkMode ? Color(0xFF57209D) : Color(0xFFFDE456);
  String get switchImage =>
      isDarkMode ? 'lib/assets/switch_dark.png' : 'lib/assets/switch_light.png';
  String get switchButtonImage => isDarkMode
      ? 'lib/assets/switch_button_dark.png'
      : 'lib/assets/switch_button_light.png';
  Color get textColor =>
      isDarkMode ? const Color(0xFF57209D) : Color(0xFFFDE456);
}
