import 'package:flutter/material.dart';
import 'package:flutter_birds/screens/details/forest_area_screen.dart';
import '../constants.dart';
import '../gnav_bar.dart';

class AreasScreen extends StatefulWidget {
  const AreasScreen({super.key});

  @override
  State<AreasScreen> createState() => _AreasScreenState();
}

class _AreasScreenState extends State<AreasScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // iconTheme: IconThemeData(
        //   color:
        //       const Color.fromARGB(255, 255, 255, 255), //change your color here
        // ),
        title: Text(locale == 'ru' ? 'Список биотопов' : 'Biotopes',
            style: TextStyle(fontSize: 18, color: Colors.white)),
        backgroundColor: kBackColor,
        automaticallyImplyLeading: false,
      ),
      body: BodyLayout(),
      bottomNavigationBar: GNavBar(page: 1),
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
  List<AreaModel> areas = [
    AreaModel(
        areaId: 1,
        name: locale == 'ru' ? "Смешанный лес" : 'Forest',
        imageUrl: 'forest',
        desc: "Описание леса",
        screen: ForestScreen(
            name: locale == 'ru' ? "Смешанный лес" : "Forest", areaId: 1)),
    AreaModel(
        areaId: 2,
        name: locale == 'ru' ? "Пойменный луг" : "Meadow",
        imageUrl: 'field',
        desc: "Описание луга",
        screen: ForestScreen(
          name: locale == 'ru' ? "Пойменный луг" : "Meadow",
          areaId: 2,
        )),
    AreaModel(
        areaId: 3,
        name: locale == 'ru' ? "Населенный пункт" : "City",
        imageUrl: 'city',
        desc: "Описание населенного пункта",
        screen: ForestScreen(
            name: locale == 'ru' ? "Населенный пункт" : "City", areaId: 3)),
  ];
  return ListView.builder(
      itemCount: areas.length,
      itemBuilder: (context, index) {
        var area = areas[index];
        return Card(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.all(
                    Radius.circular(10.0)), //add border radius here
                child: Image.asset(
                    "assets/images/${area.imageUrl}.jpg"), //add image location here
              ),
              title: Text(area.name),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => area.screen));
              },
              visualDensity: VisualDensity(vertical: 3),
            ),
          ),
        );
      });
}
