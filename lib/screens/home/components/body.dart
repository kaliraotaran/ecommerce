// import 'package:ecommerce/screens/home/components/section_title.dart';
// import 'package:ecommerce/constants.dart';
// import 'package:ecommerce/models/Product.dart';
import 'package:ecommerce/screens/home/components/popular_products.dart';
// import 'package:ecommerce/screens/home/components/section_title.dart';
import 'package:ecommerce/screens/home/components/special_offer.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import '../../../components/product_card.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'homeHeader.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: getProportionateScreenWidth(8),
          ),
          HomeHeader(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Discount_banner(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Categories(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          SpecialOfferScrollTotal(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Popular_products()
        ]),
      ),
    );
  }
}
