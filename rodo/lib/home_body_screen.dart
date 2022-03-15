import 'package:flutter/material.dart';
import 'package:rodo/car_types_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class Home_Body extends StatefulWidget {
  const Home_Body({Key? key}) : super(key: key);

  @override
  State<Home_Body> createState() => _Home_BodyState();
}

class _Home_BodyState extends State<Home_Body> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData screenInfo = MediaQuery.of(context);
    return SafeArea(
      child: Container(
        color: Color.fromARGB(255, 26, 47, 53),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset( //--------------------------------------------------Logo
                  "assets/logo/logo.png",
                  width: 200,
                ),
                SizedBox(height: 45,),
                Container( //-------------------------------------------------SearchBar
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'SEARCH MAKE AND MODEL',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                OutlinedButton(//----------------------------------------------------Search by Type Button
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(screenInfo.size.width - 40, 48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      side: BorderSide(
                          width: 3.0, color: Color.fromARGB(255, 4, 227, 107)),
                    ),
                    onPressed: () {
                      pushNewScreen(
                        context,
                        screen: TypesOfCarGrid(),
                        pageTransitionAnimation: PageTransitionAnimation.cupertino,
                      );
                    },
                    child: Text(
                      'SEARCH BY VEHICLE TYPE',
                      style: TextStyle(
                        color: Color.fromARGB(255, 4, 227, 107),
                        fontSize: 14,
                      ),
                    )),
                SizedBox(height: 20,),
                OutlinedButton( //-------------------------------------------------Search deals of the day button
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(screenInfo.size.width - 40, 48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      side: BorderSide(
                          width: 3.0, color: Color.fromARGB(255, 4, 227, 107)),
                    ),
                    onPressed: () {},
                    child: Text(
                      'SEE DEALS OF THE DAY',
                      style: TextStyle(
                        color: Color.fromARGB(255, 4, 227, 107),
                        fontSize: 14,
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
