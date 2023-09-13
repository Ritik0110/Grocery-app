import 'package:flutter/material.dart';

class Styles {
  ThemeData themeData(BuildContext context) {
    return ThemeData(
        dialogTheme: const DialogTheme(
          backgroundColor: Color(0xffffffff),
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 24),
          contentTextStyle: TextStyle(color: Colors.black, fontSize: 18),
        ),
        useMaterial3: true,
        dividerTheme: DividerThemeData(
            color: Colors.grey.shade400, space: 30, thickness: 2),
        appBarTheme: const AppBarTheme(
            color: Color(0xffffffff),
            titleTextStyle: TextStyle(color: Colors.black, fontSize: 24)),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black87,
        ),
        scaffoldBackgroundColor: const Color(0xffffffff),
        primaryColor: Colors.blue,
        listTileTheme: const ListTileThemeData(
            iconColor: Colors.black,
            titleTextStyle: TextStyle(color: Colors.black)),
        colorScheme: ThemeData().colorScheme.copyWith(
            secondary: const Color(0xffE8FDFD), brightness: Brightness.light),
        cardColor: const Color(0xffF2FDFD),
        canvasColor: Colors.grey[50],
        buttonTheme: Theme.of(context)
            .buttonTheme
            .copyWith(colorScheme: const ColorScheme.light()));
  }

  ThemeData darkThemeData(BuildContext context) {
    return ThemeData(
        dialogTheme: const DialogTheme(
          backgroundColor: Color(0xff00001a),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 24),
          contentTextStyle: TextStyle(color: Colors.white, fontSize: 18),
        ),
        useMaterial3: true,
        dividerTheme: const DividerThemeData(
            color: Colors.white54, space: 30, thickness: 2),
        appBarTheme: const AppBarTheme(
            color: Color(0xff00001a),
            titleTextStyle: TextStyle(color: Colors.white, fontSize: 24)),
        listTileTheme: const ListTileThemeData(
            iconColor: Colors.white,
            titleTextStyle: TextStyle(color: Colors.white)),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white54,
        ),
        scaffoldBackgroundColor: const Color(0xff00001a),
        primaryColor: Colors.blue,
        colorScheme: ThemeData().colorScheme.copyWith(
            secondary: const Color(0xff1a1f3c), brightness: Brightness.dark),
        cardColor: const Color(0xff0a0d2c),
        canvasColor: Colors.black,
        buttonTheme: Theme.of(context)
            .buttonTheme
            .copyWith(colorScheme: const ColorScheme.dark()));
  }
}
