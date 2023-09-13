import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/theme_provider.dart';

class TextWidget extends StatelessWidget {
  TextWidget(
      {super.key,
      required this.text,
      this.isTitle = false,
      this.maxLines = 1,
      required this.textSize,
      this.textLightColor = Colors.black,
      this.textDarkColor = Colors.white});
  final String text;
  final bool isTitle;
  final double textSize;
  final Color textLightColor;
  final Color textDarkColor;
  int maxLines;

  @override
  Widget build(BuildContext context) {
    final themeProvide = Provider.of<ThemeProvider>(context);
    return Text(
      text,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        overflow: TextOverflow.ellipsis,
          fontWeight: isTitle ? FontWeight.w700 : FontWeight.normal,
          fontSize: textSize,
          color: themeProvide.getDarkTheme ? textDarkColor : textLightColor),
    );
  }
}
