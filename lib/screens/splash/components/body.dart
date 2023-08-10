import 'package:ecommerce/constants.dart';
import 'package:ecommerce/components/default_button.dart';
import 'package:ecommerce/screens/splash/components/splash_content.dart';
import 'package:ecommerce/screens/sign-in/sign_in_screen.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;

  List<Map<String, String>> splashdata = [
    {
      'text': 'Welcome to our store Shoperz',
      'Image': 'assets/images/splash_1.png'
    },
    {
      'text': 'It is a one-stop shop for your daily needs',
      'Image': 'assets/images/splash_2.png'
    },
    {
      'text':
          'We help people shop in an easier manner\n all around the United States',
      'Image': 'assets/images/splash_3.png'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage == value;
                    });
                  },
                  itemCount: splashdata.length,
                  itemBuilder: (context, index) => SplashContent(
                    text: splashdata[index]['text'],
                    image: splashdata[index]['Image'],
                  ),
                )),
            Spacer(),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(splashdata.length,
                          (index) => BuildDot(indexx: index)),
                    ),
                    Spacer(),
                    DefaultButton(
                      text: 'Continue',
                      press: () {
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      },
                    ),
                    Spacer()
                  ]),
                ))
          ],
        ),
      ),
    );
  }

  AnimatedContainer BuildDot({required int indexx}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == indexx ? 20 : 6,
      decoration: BoxDecoration(
          color: currentPage == indexx ? kPrimaryColor : Color(0xFFD8D8D8),
          borderRadius: BorderRadius.circular(3)),
    );
  }
}
