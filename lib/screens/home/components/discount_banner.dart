import 'package:flutter/material.dart';

import '../../../size_config.dart';

class Discount_banner extends StatelessWidget {
  const Discount_banner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          vertical: getProportionateScreenWidth(15)),
      width: double.infinity,
      height: 90,
      decoration: BoxDecoration(
          color: Color(0xFF4A3298), borderRadius: BorderRadius.circular(20)),
      child: const Text.rich(
        TextSpan(
            text: 'Winter Flash Sale\n',
            style: TextStyle(color: Colors.white),
            children: [
              TextSpan(
                text: 'Cashback Upto 30%',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )
            ]),
      ),
    );
  }
}
