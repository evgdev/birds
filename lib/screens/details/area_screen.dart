import 'package:flutter/material.dart';

import '../../constants.dart';
import '../details/details_screen.dart';

class AreaScreen extends StatefulWidget {
  final AreaModel area;
  const AreaScreen({Key? key, required this.area, required String areaTitle})
      : super(key: key);

  @override
  State<AreaScreen> createState() => _AreaScreenState();
}

class _AreaScreenState extends State<AreaScreen> {
  List<BirdDataModel> birdsList = [];
  List<BirdDataModel> birds = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(title: Text(widget.area.desc)),
      appBar: AppBar(title: Text(widget.area.name)),
      body: BodyLayout(),
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

  var birdsList = allbirds.where((bird) => bird.latin == "areaTitle").toList();
  var parent = 0;
  return ListView.builder(
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
                      "assets/images/small/${bird.imageUrl}1.jpg"), //add image location here
                ),
                title: Text(bird.name),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                                bird: bird,
                                parent: parent,
                              )));
                },
                visualDensity: VisualDensity(vertical: 3),
              ),
            ),
          ),
        );
      });
}

/*
 Card(
            child: ListTile(
              leading: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.wb_cloudy,
                  ),
                ],
              ),
              title: Text('Гусеобразные'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>ListScreen()));
              },
              visualDensity: VisualDensity(vertical: 3),
            ),
          ),
          Card(
            child: ListTile(
              leading: SvgPicture.asset("assets/icons/sun.svg"),
              visualDensity: VisualDensity(vertical: 3),
              title: Text('Цапли'),
              subtitle: Text("Околоводные птицы"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ListScreen()));
              },
            ),
          ),
          Card(
            child: SizedBox(
              height: 100,
              child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 0,
                margin: EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                    Image.network(
                      'https://siberiatrekking.ru/data/tours/img_main/altai_karakabak.jpg',
                      fit: BoxFit.fill,
                    ),
                    Spacer(),
                    Text(
                      "Воробьиный сыч",
                      style: TextStyle(fontSize: 14),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ),
*/
