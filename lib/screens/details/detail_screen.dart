// import 'package:ecommerce/components/rounded_icon_btn.dart';
// import 'package:ecommerce/screens/home/home_screen.dart';
// import 'package:ecommerce/size_config.dart';
// import 'package:ecommerce/size_config.dart';
import 'package:ecommerce/screens/details/components/body.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

// import '../../constants.dart';
// import '../../models/Product.dart';
import '../../models/Product.dart';
import 'components/custom_app_bar.dart';

class DetailScreen extends StatelessWidget {
  static String routeName = '/details';

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments agrs =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: AppBar(
        leadingWidth: 1000,
        elevation: 0,
        //leadingWidth: 2,
        // toolbarHeight: 50,
        // leading: Padding(
        //     padding: EdgeInsets.all(0),
        //     //EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        leading: PreferredSize(
          preferredSize: Size.fromHeight(AppBar().preferredSize.height),
          child: CustomAppBar(
            agrs.product.rating,
          ),
        ),
      ),
      body: Body(product: agrs.product),
    );
  }
}

// // ignore: use_key_in_widget_constructors

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments(this.product);
}
