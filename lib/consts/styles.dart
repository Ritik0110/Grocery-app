import 'package:flutter/material.dart';

class TextStyleTypes{
  normalText(bool isDark){
    return TextStyle(
      fontWeight: FontWeight.w400,
      color: isDark?Colors.white:Colors.black
    );
  }
}