import 'package:flutter/material.dart';
import 'package:grocery_app/consts/theme_data.dart';
import 'package:grocery_app/provider/theme_provider.dart';
import 'package:grocery_app/screens/home_screen.dart';
import 'package:provider/provider.dart';

import 'screens/btm_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeProvider themeProvider = ThemeProvider();

  void getCurrentAppTheme()async{
    themeProvider.setDarkTheme =await themeProvider.themePrefs.getTheme();
  }
  @override
  void initState() {
    getCurrentAppTheme();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final themeData = Styles();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_){
          return ThemeProvider();
        })
      ],
      child: Consumer<ThemeProvider>(
        builder: (context,provider,child) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: themeData.themeData(context),
            darkTheme: themeData.darkThemeData(context),
            debugShowCheckedModeBanner: false,
            themeMode: provider.getDarkTheme?ThemeMode.dark:ThemeMode.light,
            home: const BottomBarScreen(),
          );
        }
      ),
    );
  }
}
