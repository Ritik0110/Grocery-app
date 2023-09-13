import 'package:flutter/material.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget(
      {super.key,
      required this.sellPrice,
      required this.realPrice,
      required this.isDiscount});
  final double sellPrice;
  final double realPrice;
  final bool isDiscount;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "\$$sellPrice",
          style: const TextStyle(
              color: Colors.green, fontWeight: FontWeight.w800, fontSize: 20),
        ),
        const SizedBox(
          width: 5,
        ),
        if (isDiscount)
        Text(
          "\$$realPrice",
          style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.lineThrough),
        ),
      ],
    );
  }
}
