import 'package:ecommerce/screens/otp/thebody.dart';
import 'package:flutter/material.dart';

class OTPScreen extends StatelessWidget {
  static String routeName = "/otp";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('OTP verification')),
    body: Body(),
    );
  }
}
