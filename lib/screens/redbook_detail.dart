import 'package:flutter/material.dart';
import 'package:flutter_birds/screens/redbook/body.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../../constants.dart';
import 'about.dart';
import 'home/home_screen.dart';
import 'list_screen.dart';
import 'redbook.dart';
import 'redbook_list.dart';

class RedbookDetails extends StatelessWidget {
  final BirdRedbookDataModel bird;
  final List birds = BirdList().birds.toList();
  RedbookDetails({Key? key, required this.bird}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // BirdDataModel? prevBird;
    // BirdDataModel? nextBird;

    // print("birdIndex");
    // print(birdIndex);
    // prevUrl = birdIndex > 0 ? birds[birdIndex - 1] : null;
    // nextUrl = birdIndex <= birds.length ? birds[birdIndex + 1] : null;
    // prevBird =
    //     prevUrl != null ? birds.firstWhere((bird) => bird == prevUrl) : null;
    // nextBird =
    //     nextUrl != null ? birds.firstWhere((bird) => bird == nextUrl) : null;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: locale == 'ru'
                ? Text("${bird.name} ${bird.latin}",
                    style: TextStyle(fontSize: 14))
                : Text(bird.name, style: TextStyle(fontSize: 18)),
            titleTextStyle:
                TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            backgroundColor: Color.fromARGB(255, 12, 58, 11),
            iconTheme: IconThemeData(color: Colors.white),
            actions: <Widget>[
              Container(
                color: Colors.teal.shade800,
                child: IconButton(
                  icon: Icon(Icons.arrow_upward),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RedbookScreen()));
                  },
                ),
              ),
            ]),
        body: Body(
          bird: bird,
          parent: 0,
        ),
//        bottomNavigationBar: BottomNavBar(1),
        bottomNavigationBar: GNav(
          backgroundColor: Color.fromARGB(255, 12, 58, 11),
          color: Colors.white,
          activeColor: Colors.white,
          tabBackgroundColor: Colors.grey.shade900,
          gap: 8,
          padding: EdgeInsets.all(16),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: "Главная",
            ),
            GButton(
              icon: Icons.audiotrack_outlined,
              text: "Голоса птиц",
            ),
            GButton(
              icon: Icons.book_outlined,
              text: "Красная Книга",
            ),
            GButton(
              icon: Icons.info_outline,
              text: "Инфо",
            ),
          ],
          selectedIndex: 2,
          onTabChange: (index) {
            switch (index) {
              case 0:
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
                break;
              case 1:
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ListScreen(
                              birds: [],
                            )));

                break;
              case 2:
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RedbookScreen()));
                break;
              case 3:
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutScreen()));
                break;
            }
          },
        ),
      ),
    );
  }
}
