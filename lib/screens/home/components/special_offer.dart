import 'package:ecommerce/screens/home/components/section_title.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class SpecialOfferScrollTotal extends StatelessWidget {
  const SpecialOfferScrollTotal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: 'Special for you',
          press: () {},
        ),
        SizedBox(
          height: getProportionateScreenHeight(20),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOffer(
                images: 'assets/images/Image Banner 2.png',
                category: 'SmartPhones',
                numOfBrands: 20,
                press: () {},
              ),
              SpecialOffer(
                images: 'assets/images/Image Banner 3.png',
                category: 'Fashion',
                numOfBrands: 12,
                press: () {},
              ),
              SpecialOffer(
                images: 'assets/images/Image Banner 2.png',
                category: 'Accessories',
                numOfBrands: 25,
                press: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOffer extends StatelessWidget {
  const SpecialOffer({
    super.key,
    required this.category,
    required this.images,
    required this.numOfBrands,
    required this.press,
  });
  final String category, images;
  final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(242),
        height: getProportionateScreenWidth(100),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Image.asset(
                images,
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Color(0xFF343434).withOpacity(0.4),
                      Color(0xFF343434).withOpacity(0.15)
                    ])),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: getProportionateScreenWidth(10),
                    horizontal: getProportionateScreenWidth(15)),
                child: Text.rich(
                    TextSpan(style: TextStyle(color: Colors.white), children: [
                  TextSpan(
                      text: '${category}\n',
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(18),
                          fontWeight: FontWeight.bold)),
                  TextSpan(text: '${numOfBrands} Brands')
                ])),
              )
            ],
          ),
        ),
      ),
    );
  }
}
