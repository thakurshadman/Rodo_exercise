import 'package:flutter/material.dart';
import 'package:rodo/bottom_nav_bar.dart';
import 'package:rodo/empty_mock_screen.dart';
import 'home_body_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  final screens = [Home_Body(), EmptyScreen(), EmptyScreen(), EmptyScreen(),EmptyScreen()];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Home_Body(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
