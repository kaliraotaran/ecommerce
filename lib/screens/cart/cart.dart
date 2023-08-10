import 'package:ecommerce/components/default_button.dart';
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/screens/cart/components/body.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../models/cart.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  static String routeName = '/cart';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(context),
      body: Body(),
      bottomNavigationBar: CheckCard(),
    );
  }

  AppBar BuildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Your Cart',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          Text(
            '${demoCarts.length} items',
            style: Theme.of(context).textTheme.caption,
          )
        ],
      ),
    );
  }
}

class CheckCard extends StatelessWidget {
  const CheckCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: getProportionateScreenWidth(15),
          horizontal: getProportionateScreenWidth(30)),
      height: 174,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(30), topLeft: Radius.circular(30)),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, -15),
              blurRadius: 10,
              color: Color(0xFFDADADA).withOpacity(0.20)),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                height: getProportionateScreenWidth(40),
                width: getProportionateScreenWidth(40),
                decoration: BoxDecoration(
                  color: Color(0xFFF5F6F9),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset('assets/icons/receipt.svg'),
              ),
              const Spacer(),
              const Text('Add Promo Code'),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.arrow_forward,
                size: 13,
                color: kTextColor,
              )
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Row(
            children: [
              const Text.rich(
                TextSpan(
                  text: "Total:\n ",
                  children: [
                    TextSpan(
                      text: '\$883.4',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ],
                ),
              ),
              Spacer(),
              SizedBox(
                width: getProportionateScreenWidth(190),
                child: DefaultButton(text: 'Check Out', press: () {}),
              )
            ],
          )
        ],
      ),
    );
  }
}
