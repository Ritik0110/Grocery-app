import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_app/services/utils.dart';
import 'package:grocery_app/widgets/price_widget.dart';
import 'package:grocery_app/widgets/text_widget.dart';

class OnSaleWidget extends StatefulWidget {
  const OnSaleWidget({super.key});

  @override
  State<OnSaleWidget> createState() => _OnSaleWidgetState();
}

class _OnSaleWidgetState extends State<OnSaleWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = Utils(context).screenSize;
    return Card(
      color: Theme.of(context).cardColor.withOpacity(0.9),
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 3,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                // Image.network(
                //   "https://i.ibb.co/F0s3FHQ/Apricots.png",
                //   fit: BoxFit.fill,
                //   height: size.height * 0.12,
                //   width: size.height * 0.12,
                // ),
                FancyShimmerImage(
                  imageUrl: "https://i.ibb.co/F0s3FHQ/Apricots.png",
                  height: size.height * 0.12,
                  width: size.height * 0.12,
                  boxFit: BoxFit.fill,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: "1 KG",
                      textSize: 20,
                      isTitle: true,
                    ),
                    const Row(
                      children: [
                        Icon(IconlyLight.bag),
                        Icon(
                          IconlyBold.heart,
                          color: Colors.red,
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const PriceWidget(sellPrice: 1.49, realPrice: 1.99, isDiscount: true),
            TextWidget(text: "PineApple", textSize: 20, isTitle: true),
          ],
        ),
      ),
    );
  }
}
