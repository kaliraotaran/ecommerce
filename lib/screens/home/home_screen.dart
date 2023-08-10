import 'package:ecommerce/customButtomNavigationBar.dart';
import 'package:ecommerce/enums.dart';
import 'package:ecommerce/screens/home/components/body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Body(),
      bottomNavigationBar:
          CustomBottomNavigationBar(selectedMenu: MenuState.home),
    );
  }
}
