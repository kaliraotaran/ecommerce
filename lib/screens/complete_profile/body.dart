import 'package:ecommerce/constants.dart';
import 'package:ecommerce/screens/complete_profile/complete_profile_form.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(15),
        ),
        child: Column(
          children: [
            Text(
              'Complete Profile',
              style: headingStyle,
            ),
            const Text(
              'Complete your details and \nfinish setting up your account',
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            CompleteProfileForm()
          ],
        ),
      ),
    );
  }
}
