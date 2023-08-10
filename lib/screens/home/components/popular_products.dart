import 'package:ecommerce/components/product_card.dart';
import 'package:ecommerce/screens/details/detail_screen.dart';
import 'package:ecommerce/screens/home/components/section_title.dart';
import 'package:flutter/material.dart';

import '../../../models/Product.dart';
import '../../../size_config.dart';

class Popular_products extends StatelessWidget {
  const Popular_products({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(text: 'Popular Product', press: () {}),
        SizedBox(
          height: getProportionateScreenWidth(9),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) => ProductCard(
                  press: () =>
                      Navigator.pushNamed(context, DetailScreen.routeName,
                          arguments: ProductDetailsArguments(
                            demoProducts[index],
                          )),
                  product: demoProducts[index],
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(20),
              )
            ],
          ),
        ),
      ],
    );
  }
}
