import 'dart:collection';
import 'package:flutter/material.dart';
import '../details/details_screen.dart';
import '../home/components/body.dart';
import '../home/components/bottom_nav_bar.dart';
import '../../constants.dart';

class MonthScreen extends StatefulWidget {
  final dynamic month;
  const MonthScreen({Key? key, required this.month}) : super(key: key);

  @override
  State<MonthScreen> createState() => _MonthScreenState();
}

class _MonthScreenState extends State<MonthScreen> {
  List<BirdDataModel> birdsList = [];
  List<BirdDataModel> birds = [];

  @override
  Widget build(BuildContext context) {
    final Map<int, String> months = HashMap();
    months[2] = 'Февраль';
    months[3] = 'Март';
    months[4] = 'Апрель';
    months[5] = 'Май';
    months[10] = 'Октябрь';
    months[11] = 'Ноябрь';
    months[12] = 'Декабрь';

    var monthName = months[widget.month];
    return Scaffold(
//      appBar: AppBar(title: Text(widget.area.desc)),
      appBar: AppBar(title: Text(monthName!)),
      body: BodyLayout(),
      bottomNavigationBar: BottomNavBar(1),
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
  List<BirdDataModel> allbirds = [];

  // ignore: unrelated_type_equality_checks
  var birdsList = allbirds.where((bird) => (bird.month == cdate)).toList();
  // var birdsList = allbirds;
  final Map<String, String> months = HashMap();
  months['02'] = 'Февраль';
  months['03'] = 'Март';
  months['04'] = 'Апрель';
  months['05'] = 'Май';
  months['10'] =
      'Октябрь - это по настоящему осенний месяц. Уже многие птицы улетели на юг';
  months['11'] = 'Ноябрь';
  months['12'] = 'Декабрь';
  cdate;

  return Container(
    padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
    child: Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          months[cdate]!,
          style: TextStyle(fontSize: 30),
        ),
        SizedBox(height: 20),
        Expanded(
          child: ListView.builder(
              itemCount: birdsList.length,
              itemBuilder: (context, index) {
                var bird = birdsList[index];
                return Card(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: GestureDetector(
                      child: ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadius.all(
                              Radius.circular(10.0)), //add border radius here
                          child: Image.asset(
                              "assets/images/${bird.imageUrl}.jpg"), //add image location here
                        ),
                        title: Text(bird.name),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailsScreen(
                                        bird: bird,
                                        parent: 0,
                                      )));
                        },
                        visualDensity: VisualDensity(vertical: 3),
                      ),
                    ),
                  ),
                );
              }),
        ),
      ],
    ),
  );
}
