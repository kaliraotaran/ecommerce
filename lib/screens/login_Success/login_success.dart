import 'package:ecommerce/screens/login_Success/body.dart';
import 'package:flutter/material.dart';

class Login_Successful extends StatelessWidget {
  const Login_Successful({super.key});
  static String routeName = '/login_success';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text('Login Successful'),
      ),
      body: Body(),
    );
  }
}
