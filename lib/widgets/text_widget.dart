import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  TextWidget(
      {super.key,
      required this.text,
      this.isTitle = false,
      this.maxLines = 10,
      required this.textSize,
      required this.textColor});
  final String text;
  bool isTitle;
  final double textSize;
  final Color textColor;
  int maxLines;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
          fontWeight: isTitle ? FontWeight.w700 : FontWeight.normal,
          fontSize: textSize,

          color: textColor),
    );
  }
}
