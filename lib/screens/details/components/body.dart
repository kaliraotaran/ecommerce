// import 'package:ecommerce/constants.dart';
// import 'dart:io';
// import 'package:ecommerce/constants.dart';
// import 'package:ecommerce/components/rounded_icon_btn.dart';
// import 'package:ecommerce/constants.dart';
import 'package:ecommerce/components/default_button.dart';
import 'package:ecommerce/models/Product.dart';
import 'package:ecommerce/screens/details/components/color_dots.dart';
import 'package:ecommerce/screens/details/components/product_description.dart';
import 'package:ecommerce/screens/details/components/product_images.dart';
import 'package:ecommerce/size_config.dart';
// import 'package:ecommerce/size_config.dart';
// import 'package:ecommerce/size_config.dart';
// import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductImage(product: product),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(
                product: product,
                pressonMore: () {},
              ),
              TopRoundedContainer(
                  color: Color(0xFFF6F7F9),
                  child: Column(
                    children: [
                      ColorDots(product: product),
                      TopRoundedContainer(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: SizeConfig.screenHeight * 0.06,
                              right: SizeConfig.screenHeight * 0.06,
                              top: getProportionateScreenWidth(5),
                              bottom: getProportionateScreenWidth(11)),
                          child: DefaultButton(
                            text: 'Add to Cart',
                            press: () {},
                          ),
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
