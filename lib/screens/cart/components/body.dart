// import 'package:ecommerce/constants.dart';
import 'package:ecommerce/models/cart.dart';
import 'package:ecommerce/screens/cart/components/cart_item_card.dart';
// import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: demoCarts.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
        child: Dismissible(
          key: Key(demoCarts[index].product.id.toString()),
          background: Container(
            decoration: BoxDecoration(
                color: Color(0xFFFFE6E6),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                Spacer(),
                SvgPicture.asset('assets/icons/Trash.svg'),
                SizedBox(
                  width: 30,
                )
              ],
            ),
          ),
          onDismissed: (direction) {
            setState(() {
              demoCarts.removeAt(index);
            });
          },
          child: CartItemCard(
            cart: demoCarts[index],
          ),
        ),
      ),
    );
  }
}
