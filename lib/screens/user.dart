import 'package:flutter/gestures.dart';
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
    Color textColor = themeProvide.getDarkTheme ? Colors.white : Colors.black;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RichText(
                  text: TextSpan(
                      text: "Hi ,",
                      style: const TextStyle(
                          color: Colors.cyan,
                          fontSize: 24,
                          fontWeight: FontWeight.w700),
                      children: [
                    TextSpan(
                        text: "my Name",
                        style: TextStyle(
                            color: textColor, fontWeight: FontWeight.w500),
                        recognizer: TapGestureRecognizer()..onTap = () {})
                  ])),
              const Divider(),
              menuItems(
                  lead: IconlyLight.user2,
                  title: "Address",
                  onPress: () {
                    _showDialog(
                        headMsg: const Text("Address",style: TextStyle(fontWeight: FontWeight.w500),),
                        subMsg: TextField(
                          maxLines: 5,
                          decoration: InputDecoration(
                              hintText: "Enter your address",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15))),
                        ),
                        btn1Text: "Update");
                  }),
              menuItems(
                  lead: IconlyLight.bag2, title: "Orders", onPress: () {}),
              menuItems(
                  lead: IconlyLight.heart, title: "Wishlist", onPress: () {}),
              menuItems(
                  lead: IconlyLight.show, title: "Viewed", onPress: () {}),
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
              menuItems(
                  lead: IconlyLight.logout, title: "Logout", onPress: () {
                    _showDialog(
                        headMsg: const Row(
                          children: [
                            Icon(IconlyLight.logout),
                            SizedBox(width: 10,),
                            Text("Logout",style: TextStyle(fontWeight: FontWeight.w500),),
                          ],
                        ),
                        subMsg: const Text("Are you sure you want to logout?"),
                        btn1Text: "Yes",
                        btn2: true,
                        btn2Text: "No");
              }),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _showDialog(
      {required Widget headMsg,
      required Widget subMsg,
      bool btn2 = false,
      required String btn1Text,
      String btn2Text = ""}) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            backgroundColor: Theme.of(context).cardColor,
            title: headMsg,
            content: subMsg,
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(btn1Text)),
              if (btn2)
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(btn2Text)),
            ],
          );
        });
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
        style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
      ),
      trailing: trail ?? const Icon(IconlyLight.arrowRight2),
        subtitle: Text(
          subtitle ?? "",
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w200),
        ),

    );
  }
}
