import 'dart:collection';
import 'package:flutter/material.dart';
import '../../constants.dart';
import '../gnav_bar.dart';
import '../list_birds.dart';
import 'monthScreen.dart';

// ignore: must_be_immutable
class YearScreen extends StatelessWidget {
  YearScreen({Key? key}) : super(key: key);

  List<BirdDataModel> birdsList = [];

  List<BirdDataModel> birds = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(
            color: const Color.fromARGB(
                255, 255, 255, 255), //change your color here
          ),
          title: Text(locale == "ru" ? "Выберите месяц" : "Select month",
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
      body: BodyLayout(),
      bottomNavigationBar: GNavBar(page: 0),
    );
  }
}

class BodyLayout extends StatefulWidget {
  @override
  State<BodyLayout> createState() => _BodyLayoutState();
}

class _BodyLayoutState extends State<BodyLayout> {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context) {
  final Map<String, int> monthsNames = HashMap();
  locale == "ru" ? monthsNames['январь'] = 1 : monthsNames['January'] = 1;
  locale == "ru" ? monthsNames['февраль'] = 2 : monthsNames['February'] = 2;
  locale == "ru" ? monthsNames['март'] = 3 : monthsNames['March'] = 3;
  locale == "ru" ? monthsNames['апрель'] = 4 : monthsNames['April'] = 4;
  locale == "ru" ? monthsNames['май'] = 5 : monthsNames['May'] = 5;
  locale == "ru" ? monthsNames['июнь'] = 6 : monthsNames['June'] = 6;
  locale == "ru" ? monthsNames['июль'] = 7 : monthsNames['July'] = 7;
  locale == "ru" ? monthsNames['август'] = 8 : monthsNames['August'] = 8;
  locale == "ru" ? monthsNames['сентябрь'] = 9 : monthsNames['September'] = 9;
  locale == "ru" ? monthsNames['октябрь'] = 10 : monthsNames['October'] = 10;
  locale == "ru" ? monthsNames['ноябрь'] = 11 : monthsNames['November'] = 11;
  locale == "ru" ? monthsNames['декабрь'] = 12 : monthsNames['December'] = 12;
  // var birdsList = allbirds;
  final List<String> months;
  months = [
    locale == "ru" ? 'январь' : 'January',
    locale == "ru" ? 'февраль' : 'February',
    locale == "ru" ? 'март' : 'March',
    locale == "ru" ? 'апрель' : 'April',
    locale == "ru" ? 'май' : 'May',
    locale == "ru" ? 'июнь' : 'June',
    locale == "ru" ? 'июль' : 'July',
    locale == "ru" ? 'август' : 'August',
    locale == "ru" ? 'сентябрь' : 'September',
    locale == "ru" ? 'октябрь' : 'October',
    locale == "ru" ? 'ноябрь' : 'November',
    locale == "ru" ? 'декабрь' : 'December',
  ];

  return ListView.builder(
      itemCount: months.length,
      itemBuilder: (context, index) {
        var month = months[index];
        return Card(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: GestureDetector(
              child: ListTile(
                leading: SizedBox(
                  width: 120,
                  height: 90,
                  child: Image.asset(
                      "assets/images/month${monthsNames[month]}.jpg",
                      fit: BoxFit
                          .fitHeight), //add image location here, fit: BoxFit.cover),
                ),
                title: Text(month),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              monthScreen(birds: birds, month: month)));
                },
                visualDensity: VisualDensity(vertical: 3),
              ),
            ),
          ),
        );
      });
}
