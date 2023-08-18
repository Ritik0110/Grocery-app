import 'package:flutter/material.dart';
import 'package:grocery_app/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvide = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Center(
        child: SwitchListTile(
            activeTrackColor: Colors.blue,
            inactiveTrackColor: Colors.grey,
            secondary: Icon(
                themeProvide.getDarkTheme ? Icons.dark_mode : Icons.light_mode),
            title: const Text("Theme"),
            value: themeProvide.getDarkTheme,
            onChanged: (value) {
              themeProvide.setDarkTheme = value;
            }),
      ),
    );
  }
}
