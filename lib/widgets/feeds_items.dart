import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_app/services/utils.dart';
import 'package:grocery_app/widgets/price_widget.dart';
import 'package:grocery_app/widgets/text_widget.dart';

class FeedsWidget extends StatefulWidget {
  const FeedsWidget({super.key});

  @override
  State<FeedsWidget> createState() => _FeedsWidgetState();
}

class _FeedsWidgetState extends State<FeedsWidget> {
  TextEditingController itemController = TextEditingController(text: "1");
  @override
  Widget build(BuildContext context) {
    Utils utils = Utils(context);
    Size size = utils.screenSize;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.only(top: 5),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          FancyShimmerImage(
            imageUrl: "https://i.ibb.co/F0s3FHQ/Apricots.png",
            height: size.height * 0.12,
            width: size.height * 0.12,
            boxFit: BoxFit.fill,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget(
                text: "Orange",
                textSize: 22,
                isTitle: true,
              ),
              const Icon(IconlyLight.heart),
            ],
          ),
          Row(
            children: [
              const PriceWidget(sellPrice: 2.99, realPrice: 0, isDiscount: false),
              const Spacer(),
              TextWidget(
                text: "KG",
                textSize: 18,
                isTitle: true,
              ),
              const SizedBox(width: 5),
              SizedBox(
                  height: 50,
                  width: 20,
                  child: TextField(
                    controller: itemController,
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w700,color:utils.color ),
                    decoration:  InputDecoration(
                        border: const UnderlineInputBorder(),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: utils.color))),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    textAlignVertical: TextAlignVertical.center,
                  )),
            ],
          ),
          const Spacer(),
          MaterialButton(
            onPressed: () {},
            minWidth: double.infinity,
            height: 40,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
            elevation: 0,
            child: const Text(
              "Add to Cart",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
          )
        ],
      ),
    );
  }
}
