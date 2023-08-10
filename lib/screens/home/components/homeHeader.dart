import 'package:ecommerce/screens/cart/cart.dart';
import 'package:flutter/material.dart';

import '../../../components/iconBtnWithCounter.dart';
import '../../../size_config.dart';
import 'Search_bar.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        SearchField(),
        IconBtnWithCounter(
          svgsrc: 'assets/icons/Cart Icon.svg',
          press: () => Navigator.pushNamed(context, CartScreen.routeName),
          numOfItems: '',
        ),
        IconBtnWithCounter(
          svgsrc: 'assets/icons/Bell.svg',
          numOfItems: '2',
          press: () {},
        ),
      ]),
    );
  }
}
