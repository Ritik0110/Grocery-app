import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_app/screens/cart.dart';
import 'package:grocery_app/screens/category.dart';
import 'package:grocery_app/screens/home_screen.dart';
import 'package:grocery_app/screens/user.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int selectedIndex = 0;
  final List<Map<String,dynamic>> _pages = [
    {
      'page':const HomeScreen(),
      'title':"Home Screen"
    },
    {
      'page':const CategoryScreen(),
      'title':"Category Screen"
    },
    {
      'page':const CartScreen(),
      'title':"Cart Screen"
    },
    {
      'page':const UserScreen(),
      'title':"User Screen"
    },
  ];
  void selectedPage(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[selectedIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          backgroundColor: Theme.of(context).cardColor,
          type: BottomNavigationBarType.fixed,
          onTap: selectedPage,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(IconlyLight.home),
                activeIcon: Icon(IconlyBold.home),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(IconlyLight.category),
                activeIcon: Icon(IconlyBold.category),
                label: "Category"),
            BottomNavigationBarItem(
                icon: Icon(IconlyLight.bag),
                activeIcon: Icon(IconlyBold.bag),
                label: "Cart"),
            BottomNavigationBarItem(
                icon: Icon(IconlyLight.user2),
                activeIcon: Icon(IconlyBold.user2),
                label: "User"),
          ]),
    );
  }
}
