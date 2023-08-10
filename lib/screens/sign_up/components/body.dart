import 'package:ecommerce/constants.dart';
import 'package:ecommerce/screens/sign-in/components/body.dart';
import 'package:ecommerce/screens/sign_up/components/signupForm.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

// import '../../../components/default_button.dart';
// import '../../../components/form_error.dart';
// import '../../forgatpass/forgot_password.dart';
// import '../../login_Success/login_success.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20), vertical: 20),
          child: Column(
            children: [
              Text(
                'Register Account',
                style: headingStyle,
              ),
              const Text(
                'Complete your details or continue\nwith social media',
                textAlign: TextAlign.center,
              ),
              SignUpForm(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialIcon(
                    icon: 'assets/icons/facebook-2.svg',
                    press: () {},
                  ),
                  SocialIcon(
                    icon: 'assets/icons/twitter.svg',
                    press: () {},
                  ),
                  SocialIcon(
                    icon: 'assets/icons/google-icon.svg',
                    press: () {},
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(8),
              ),
              const Text(
                'By continuing you are agreeing \nto Shoperz\'s terms and conditions',
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
