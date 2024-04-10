import 'package:flutter/material.dart';
import 'package:flutter_birds/screens/details/details_screen.dart';
import 'package:flutter_birds/screens/home/components/recomend_bird_card.dart';
import 'package:intl/intl.dart';

import '../../monthScreen.dart';
import '/constants.dart';

var now = DateTime.now();
var formatter = DateFormat('MM');
String cdate = formatter.format(now);

class RecomendBirds extends StatelessWidget {
  const RecomendBirds({Key? key, required this.birds}) : super(key: key);
  final List<BirdDataModel> birds;

  @override
  Widget build(BuildContext context) {
//    print(birds);
    var randomBirds = (birds.toList()..shuffle());
    Map<String, String> months = locale == 'ru'
        ? {
            "01": "январь",
            "02": "февраль",
            "03": "март",
            "04": "апрель",
            "05": "май",
            "06": "июнь",
            "07": "июль",
            "08": "август",
            "09": "сентябрь",
            "10": "октябрь",
            "11": "ноябрь",
            "12": "декабрь"
          }
        : {
            "01": "January",
            "02": "February",
            "03": "March",
            "04": "April",
            "05": "May",
            "06": "June",
            "07": "July",
            "08": "August",
            "09": "September",
            "10": "October",
            "11": "November",
            "12": "December"
          };
    //var bird = birds[0];

    // print("asd");
    print(cdate);
    String? monthName =
        months[cdate.toString()] != null ? months[cdate] : "not found";

//    print(monthName);
    return Column(
      children: [
        Row(children: <Widget>[
          Spacer(),
          Text(
            locale == 'ru' ? 'Птицы месяца: ' : 'Birds of month',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : Colors.grey.shade800),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              monthScreen(birds: birds, month: monthName)));
                },
                style: ElevatedButton.styleFrom(
                  elevation: 4,
                  side: BorderSide(
                    width: 1,
                    color: Color.fromARGB(255, 149, 148, 148),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // <-- Radius
                  ),
                ),
                child: Text(
                  monthName!,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.grey.shade800),
                ),
              ),
            ),
          ),
        ]),
        if (randomBirds.isNotEmpty) ...[
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (var i = 0; i <= 5; i++) ...[
                  RecomendBirdCard(
                      image:
                          'assets/images/small/${randomBirds[i].imageUrl}1.jpg',
                      title: randomBirds[i].name,
                      latin: randomBirds[i].latin,
                      family: randomBirds[i].family,
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailsScreen(
                                      bird: randomBirds[i],
                                      parent: 4,
                                    )));
                      }),
                  Divider(),
                ],
              ],
            ),
          ),
        ],
      ],
    );
  }
}
