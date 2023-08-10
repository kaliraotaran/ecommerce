import 'package:ecommerce/screens/sign_up/signup_screen.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, SignUpScreen.routeName);
      },
      child: Text(
        'SignUp',
        style: TextStyle(
            color: kPrimaryColor, fontSize: getProportionateScreenWidth(16)),
      ),
    );
  }
}
