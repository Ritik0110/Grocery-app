import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:provider/provider.dart';

import '../provider/theme_provider.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    final themeProvide = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
              text: TextSpan(
                  text: "Hi ,",
                  style: TextStyle(
                      color: Colors.cyan,
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                  children: [TextSpan(text: "my Name")])),
          const Divider(),
          menuItems(lead: IconlyLight.user2, title: "Address", onPress: () {}),
          menuItems(lead: IconlyLight.bag2, title: "Orders", onPress: () {}),
          menuItems(lead: IconlyLight.heart, title: "Wishlist", onPress: () {}),
          menuItems(lead: IconlyLight.show, title: "Viewed", onPress: () {}),
          menuItems(
              lead: themeProvide.getDarkTheme
                  ? Icons.dark_mode
                  : Icons.light_mode,
              title: "Theme",
              onPress: () {
                themeProvide.setDarkTheme = !themeProvide.getDarkTheme;
              },
              trail: Switch(
                  activeTrackColor: Colors.blue,
                  inactiveTrackColor: Colors.grey,
                  value: themeProvide.getDarkTheme,
                  onChanged: (value) {
                    themeProvide.setDarkTheme = value;
                  })),
          menuItems(
              lead: IconlyLight.unlock,
              title: "Forgot Password",
              onPress: () {}),
          menuItems(lead: IconlyLight.logout, title: "Logout", onPress: () {}),
        ],
      ),
    );
  }

  Widget menuItems(
      {required IconData lead,
      required String title,
      String? subtitle,
      Widget? trail,
      required VoidCallback onPress}) {
    return ListTile(
      onTap: onPress,
      leading: Icon(lead),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
      ),
      subtitle: Text(
        subtitle ?? "",
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
      ),
      trailing: trail ?? const Icon(IconlyLight.arrowRight2),
    );
  }
}
