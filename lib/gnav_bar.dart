import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:flutter_birds/screens/home/home_screen.dart';
import 'package:flutter_birds/screens/list_areas.dart';
import 'package:flutter_birds/screens/list_screen.dart';
import 'package:flutter_birds/screens/redbook.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class GNavBar extends StatefulWidget {
  final int page;
  const GNavBar({super.key, required this.page});

  @override
  State<GNavBar> createState() => _GNavBarState();
}

class _GNavBarState extends State<GNavBar> {
  @override
  Widget build(BuildContext context) {
    return GNav(
      backgroundColor: Color.fromARGB(255, 12, 58, 11),
      color: Colors.white,
      activeColor: Colors.white,
      tabBackgroundColor: Colors.grey.shade900,
      gap: 8,
      padding: EdgeInsets.all(16),
      tabs: [
        GButton(
          icon: Icons.home,
          text: locale == 'ru' ? "Главная" : 'Home',
        ),
        GButton(
          icon: Icons.place_outlined,
          text: locale == 'ru' ? "Биотопы" : 'Biotopes',
        ),
        GButton(
            icon: Icons.audiotrack_outlined,
            text: locale == 'ru' ? "Голоса птиц" : 'Voices of birds'),
        GButton(
          icon: Icons.menu_book_sharp,
          text: locale == 'ru' ? "Красная Книга" : 'Redbook',
        ),

        // GButton(
        //   icon: Icons.info_outline,
        //   text: "Квиз",
        // ),
      ],

      selectedIndex: widget.page,
      //selectedIndex: widget._page,
      onTabChange: (index) {
        switch (index) {
          case 0:
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomeScreen()));
            break;
          case 1:
            // Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //         builder: (context) => ForestScreen(
            //               name: "Лес",
            //             )));
            if (widget.page != 1) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AreasScreen()));
            }
            break;
          case 2:
            if (widget.page != 2) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ListScreen(
                            birds: [],
                          )));
            }
            break;
          case 3:
            if (widget.page != 3) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RedbookScreen()));
            }
            break;

          // case 4:
          //   Navigator.push(context,
          //       MaterialPageRoute(builder: (context) => QuizScreen()));
          //   break;
        }
      },
    );
  }
}
