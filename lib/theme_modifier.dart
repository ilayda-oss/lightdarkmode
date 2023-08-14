import 'package:day_night_switch/day_night_switch.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:yeni/theme.dart';

class ThemeModifier extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final windowPadding = MediaQuery.of(context).padding;
    return Row(
      children: [
        Image.asset(
          themeProvider.switchButtonImage,
          width: 24,
          height: 24,
          color: themeProvider.switchButtonColor,
        ),
        SizedBox(width: 10), // Görüntü ile anahtar arasına boşluk ekledik
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Transform.scale(
            scale: 0.5,
            child: DayNightSwitch(
              dayColor: Color(0xFFFDE456),
              nightColor: Color(0xFF57209D),
              value: themeProvider.isDarkMode,
              moonImage: AssetImage('lib/assets/switch_light.png'),
              sunImage: AssetImage('lib/assets/switch_dark.png'),
              sunColor: Color(0xFF57209D),
              moonColor: Color(0xFFFDE456),
              onChanged: (value) {
                themeProvider.toggleTheme();
              },
            ),
          ),
        ),
      ],
    );
  }
}
