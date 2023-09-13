import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/text_widget.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget(
      {super.key,
      required this.categoryName,
      required this.categoryImage,
      required this.backgroundColor});
  final String categoryName;
  final String categoryImage;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: backgroundColor.withOpacity(0.1),
        border: Border.all(color: backgroundColor, width: 2.5),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: size.height * 0.15,
            width: size.width * 0.3,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      categoryImage,
                    ),
                    fit: BoxFit.cover)),
          ),
          TextWidget(text: categoryName, textSize: 18, isTitle: true),
        ],
      ),
    );
  }
}
