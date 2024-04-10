import 'package:flutter/material.dart';
import 'package:flutter_birds/screens/home/home_screen.dart';
import 'package:flutter_birds/screens/list_screen.dart';
import 'package:flutter_birds/screens/redbook.dart';
import 'package:flutter_birds/screens/about.dart';
import '/constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar(
    screen, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(
            left: kDefaultPadding * 2,
            right: kDefaultPadding * 2,
            bottom: kDefaultPadding / 2),
        height: 60,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              offset: Offset(0, -10),
              blurRadius: 35,
              color: kPrimaryColor.withOpacity(0.2)),
        ]),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                icon: Image.asset("assets/images/home.png"),
              ),

              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ListScreen(
                                  birds: [],
                                )));
                  },
                  icon: Image.asset("assets/images/audio.png"),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    backgroundColor: kPrimaryColor,
                  )),

              // Text("голоса")

              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RedbookScreen()));
                },
                icon: Image.asset("assets/images/redbook.png"),
              ),

              // Text(
              //   "Красная Книга\n Томской Области",
              //   style: TextStyle(fontSize: 8),
              // )
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AboutScreen()));
                  },
                  icon: Image.asset("assets/images/about.png"),
                  style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      backgroundColor: kPrimaryColor,
                      textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: kTextColor))),

              // Text(
              //   "О проекте",
              //   style: TextStyle(
              //       fontSize: 14,
              //       fontWeight: FontWeight.w400,
              //       color: kTextColor),
              // )
            ]));
  }
}
