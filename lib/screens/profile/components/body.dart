import 'package:ecommerce/constants.dart';
import 'package:ecommerce/screens/profile/components/profilepic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePic(),
        SizedBox(
          height: 20,
        ),
        ProfileScreen(
          icon: 'assets/icons/User Icon.svg',
          text: 'My Account',
          press: () {},
        ),
        ProfileScreen(
          icon: 'assets/icons/Bell.svg',
          text: 'Notification',
          press: () {},
        ),
        ProfileScreen(
          icon: 'assets/icons/Settings.svg',
          text: 'Settings',
          press: () {},
        ),
        ProfileScreen(
          icon: 'assets/icons/Question mark.svg',
          text: 'Help center',
          press: () {},
        ),
        ProfileScreen(
          icon: 'assets/icons/Log out.svg',
          text: 'Log out',
          press: () {},
        )
      ],
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    super.key,
    required this.icon,
    required this.text,
    required this.press,
  });

  final String icon, text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
      child: SizedBox(
        height: 50,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                elevation: 0,
                padding: EdgeInsets.symmetric(horizontal: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                backgroundColor: Color(0xfff5f6f9)),
            onPressed: press,
            child: Row(
              children: [
                SvgPicture.asset(
                  icon,
                  width: 24,
                  color: kPrimaryColor,
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: Text(
                  text,
                  style: Theme.of(context).textTheme.bodyText1,
                )),
                Icon(
                  Icons.arrow_forward,
                  color: kPrimaryColor,
                )
              ],
            )),
      ),
    );
  }
}
