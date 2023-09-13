import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/category_widget.dart';
import 'package:grocery_app/widgets/text_widget.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});

  List<Map<String,dynamic>> categories = [
    {
      'categoryName':"Fruits",
      'categoryImage':"assets/images/fruits.png",
      'backgroundColor':Colors.red
    },
    {
      'categoryName':"Vegetables",
      'categoryImage':"assets/images/fruits.png",
      'backgroundColor':Colors.green
    },
    {
      'categoryName':"Herbs",
      'categoryImage':"assets/images/fruits.png",
      'backgroundColor':Colors.orange
    },
    {
      'categoryName':"Nuts",
      'categoryImage':"assets/images/fruits.png",
      'backgroundColor':Colors.blue
    },
    {
      'categoryName':"Spices",
      'categoryImage':"assets/images/fruits.png",
      'backgroundColor':Colors.purple
    },
    {
      'categoryName':"Grains",
      'categoryImage':"assets/images/fruits.png",
      'backgroundColor':Colors.yellow
    },
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: TextWidget(text: "Categories", textSize: 20,isTitle: true,),
        elevation: 0,
      ),
        body: SafeArea(
            child: GridView.builder(
              padding: const EdgeInsets.all(10),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.85
                ),
                itemCount: 6,
                itemBuilder: (context, index) =>  CategoriesWidget(
                  backgroundColor:categories[index]['backgroundColor'],
                  categoryName: categories[index]['categoryName'] ,
                  categoryImage: categories[index]['categoryImage'],
                ))));
  }
}
