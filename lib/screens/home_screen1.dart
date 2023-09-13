import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_app/services/utils.dart';
import 'package:grocery_app/widgets/feeds_items.dart';
import 'package:grocery_app/widgets/on_sale_widget.dart';
import 'package:grocery_app/widgets/text_widget.dart';

class HomePageMain extends StatefulWidget {
  const HomePageMain({super.key});

  @override
  State<HomePageMain> createState() => _HomePageMainState();
}

class _HomePageMainState extends State<HomePageMain> {
  @override
  Widget build(BuildContext context) {
    Size size = Utils(context).screenSize;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.25,
              child: Swiper(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.red,
                  );
                },
                autoplay: true,
                containerHeight: 200,
                containerWidth: double.infinity,
                pagination: const SwiperPagination(),
              ),
            ),
            SizedBox(
              child: TextButton(
                  onPressed: () {},
                  child: TextWidget(
                    text: "View All",
                    textSize: 20,
                    isTitle: true,
                    textDarkColor: Colors.blue,
                    textLightColor: Colors.blue,
                  )),
            ),
            Row(
              children: [
                RotatedBox(
                  quarterTurns: 3,
                  child: Row(
                    children: [
                      const SizedBox(height: 40),
                      TextWidget(
                          text: "on sale ".toUpperCase(),
                          isTitle: true,
                          textSize: 22,
                          textDarkColor: Colors.red,
                          textLightColor: Colors.red),
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(
                        IconlyLight.discount,
                        color: Colors.red,
                        size: 30,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: size.height * 0.27,
                    child: ListView.builder(
                      physics: const ClampingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return const OnSaleWidget();
                      },
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                    text: "Our Products",
                    textSize: 22,
                    isTitle: true,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Browse All",
                        style:
                            TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      ))
                ],
              ),
            ),
            GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
              itemCount: 4,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.81,
                  crossAxisSpacing: 5, mainAxisSpacing: 10, crossAxisCount: 2),
              itemBuilder: (context, index) {
                return const FeedsWidget();
              },
            )
          ],
        ),
      ),
    );
  }
}
