import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:flutter_birds/list_birds.dart';
import '../constants.dart';
import '../gnav_bar.dart';
import 'details/details_screen.dart';
import 'yearScreen.dart';

// ignore: must_be_immutable, camel_case_types
class monthScreen extends StatelessWidget {
  List<BirdDataModel> birds;
  String month;
  monthScreen({super.key, required this.birds, required this.month});

  @override
  Widget build(BuildContext context) {
    final Map<String, String> months = HashMap();
    locale == "ru"
        ? months['январь'] = 'января'
        : months['January'] = 'January';
    locale == "ru"
        ? months['февраль'] = 'февраля'
        : months['February'] = 'February';
    locale == "ru" ? months['март'] = 'марта' : months['March'] = 'March';
    locale == "ru" ? months['апрель'] = 'апреля' : months['April'] = 'April';
    locale == "ru" ? months['май'] = 'мая' : months['May'] = 'May';
    locale == "ru" ? months['июнь'] = 'июня' : months['June'] = 'June';
    locale == "ru" ? months['июль'] = 'июля' : months['July'] = 'July';
    locale == "ru" ? months['август'] = 'августа' : months['August'] = 'August';
    locale == "ru"
        ? months['сентябрь'] = 'сентября'
        : months['September'] = 'September';
    locale == "ru"
        ? months['октябрь'] = 'октября'
        : months['October'] = 'October';
    locale == "ru"
        ? months['ноябрь'] = 'ноября'
        : months['November'] = 'November';
    locale == "ru"
        ? months['декабрь'] = 'декабря'
        : months['December'] = 'December';
    final Map<String, int> monthInt = HashMap();
    locale == "ru" ? monthInt['январь'] = 1 : monthInt['January'] = 1;
    locale == "ru" ? monthInt['февраль'] = 2 : monthInt['February'] = 2;
    locale == "ru" ? monthInt['март'] = 3 : monthInt['March'] = 3;
    locale == "ru" ? monthInt['апрель'] = 4 : monthInt['April'] = 4;
    locale == "ru" ? monthInt['май'] = 5 : monthInt['May'] = 5;
    locale == "ru" ? monthInt['июнь'] = 6 : monthInt['June'] = 6;
    locale == "ru" ? monthInt['июль'] = 7 : monthInt['July'] = 7;
    locale == "ru" ? monthInt['август'] = 8 : monthInt['August'] = 8;
    locale == "ru" ? monthInt['сентябрь'] = 9 : monthInt['September'] = 9;
    locale == "ru" ? monthInt['октябрь'] = 10 : monthInt['October'] = 10;
    locale == "ru" ? monthInt['ноябрь'] = 11 : monthInt['November'] = 11;
    locale == "ru" ? monthInt['декабрь'] = 12 : monthInt['December'] = 12;
    String appTitle =
        locale == "ru" ? "Птицы ${months[month]}" : "Birds of ${months[month]}";

    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(
            color: const Color.fromARGB(
                255, 255, 255, 255), //change your color here
          ),
          title: Text(appTitle.toString(),
              style: TextStyle(fontSize: 18, color: Colors.white)),
          backgroundColor: kBackColor,
          actions: <Widget>[
            Container(
              color: Colors.teal.shade800,
              child: IconButton(
                  icon: Icon(Icons.list_sharp),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => YearScreen()));
                  }),
            ),
          ]),
      body: BodyLayout(
        birds: birds,
        monthNumber: monthInt[month]!,
      ),
      //bottomNavigationBar: BottomNavBar(1),
      bottomNavigationBar: GNavBar(page: 0),
    );
  }
}

// ignore: must_be_immutable
class BodyLayout extends StatelessWidget {
  int monthNumber = 0;
  BodyLayout({super.key, required birds, required this.monthNumber});

  @override
  Widget build(BuildContext context) {
    print(monthNumber);
    return _myListView(context, birds: birds, monthNumber: monthNumber);
  }
}

Widget _myListView(BuildContext context,
    {required List<BirdDataModel> birds, required monthNumber}) {
  List birdsList = [];

  // birdsList = birds.where((i) => i.month.contains(int.parse(cdate))).toList();
  birdsList = birds.where((i) => i.month.contains(monthNumber)).toList();
  // birdsList.sort((a, b) => a.name.compareTo(b.name));
  return Column(
    children: [
      Expanded(
        child: ListView.builder(
            itemCount: birdsList.length,
            itemBuilder: (context, index) {
              var bird = birdsList[index];
              return Card(
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: ListTile(
                    leading: SizedBox(
                      width: 120,
                      height: 90,
                      child: Image.asset(
                          "assets/images/small/${bird.imageUrl}1.jpg",
                          fit: BoxFit
                              .fitHeight), //add image location here, fit: BoxFit.cover),
                    ),
                    title: RichText(
                        text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: bird.name,
                          style: Theme.of(context).brightness == Brightness.dark
                              ? TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                )
                              : TextStyle(
                                  fontSize: 16,
                                  color: const Color.fromARGB(255, 43, 43, 43),
                                  fontWeight: FontWeight.w500),
                        ),
                        TextSpan(
                          text: " \n${bird.latin}",
                          style: Theme.of(context).brightness == Brightness.dark
                              ? TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                )
                              : TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 123, 123, 123),
                                  fontWeight: FontWeight.w400,
                                ),
                        ),
                      ],
                    )),
//                     Text("${bird.name}\n${bird.latin}"),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsScreen(
                                    bird: bird,
                                    parent: 3,
                                  )));
                    },
                    visualDensity: VisualDensity(vertical: 3),
                  ),
                ),
              );
            }),
      ),
    ],
  );
}
