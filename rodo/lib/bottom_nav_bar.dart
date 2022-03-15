import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:rodo/home_body_screen.dart';
import 'empty_mock_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  PersistentTabController _controller =
  PersistentTabController(initialIndex: 0);
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      navBarStyle: NavBarStyle.style6,
      screens: [
        HomeBody(),
        EmptyScreen(),
        EmptyScreen(),
        EmptyScreen(),
        EmptyScreen()
      ],
      items: [
        PersistentBottomNavBarItem(
            inactiveIcon: Icon(
              Icons.home_outlined,
              size: 35,
              color: Colors.black,
            ),
            icon: Icon(
              Icons.home,
              size: 35,
              color: Colors.black,
            )),
        PersistentBottomNavBarItem(
            inactiveIcon: Icon(
              Icons.chat_bubble_outline_rounded,
              size: 35,
              color: Colors.black,
            ),
            icon: Icon(
              Icons.chat_bubble_rounded,
              size: 35,
              color: Colors.black,
            )),
        PersistentBottomNavBarItem(
            inactiveIcon: Icon(
              Icons.favorite_border_outlined,
              size: 35,
              color: Colors.black,
            ),
            icon: Icon(
              Icons.favorite,
              size: 35,
              color: Colors.black,
            )),
        PersistentBottomNavBarItem(
            inactiveIcon: Icon(
              Icons.upload_file,
              size: 35,
              color: Colors.black,
            ),
            icon: Icon(
              Icons.upload_file_rounded,
              size: 35,
              color: Colors.black,
            )),
        PersistentBottomNavBarItem(
            inactiveIcon: Icon(
              Icons.settings_outlined,
              size: 35,
              color: Colors.black,
            ),
            icon: Icon(
              Icons.settings,
              size: 35,
              color: Colors.black,
            )),
      ],
    );
  }}