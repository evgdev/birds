import 'package:flutter/material.dart';
import 'package:flutter_birds/gnav_bar.dart';
import 'package:flutter_birds/list_birds.dart';
import '../../constants.dart';
import '../details/details_screen.dart';

// ignore: must_be_immutable
class ForestScreen extends StatelessWidget {
  final String name;
  final int areaId;
  ForestScreen({Key? key, required this.name, required this.areaId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color:
              const Color.fromARGB(255, 255, 255, 255), //change your color here
        ),
        title: Text(name, style: TextStyle(fontSize: 18, color: Colors.white)),
        backgroundColor: kBackColor,
      ),
      body: BodyLayout(
        birds: birds,
        name: name,
        areaId: areaId,
      ),
      bottomNavigationBar: GNavBar(page: 1),
    );
  }
}

// ignore: must_be_immutable
class BodyLayout extends StatelessWidget {
  //List<BirdDataModel> _birds = [];
  final String name;
  final int areaId;
  BodyLayout(
      {super.key,
      required List birds,
      required this.name,
      required this.areaId});

  @override
  Widget build(BuildContext context) {
    return _myListView(context, birds: birds, name: name, areaId: areaId);
  }
}

Widget _myListView(BuildContext context,
    {required List<BirdDataModel> birds, required name, required areaId}) {
  //List new_birds = birds;

  int parentId = 0;
  List birdsList = [];
  switch (areaId) {
    case 1:
      parentId = 5;
      break;
    case 2:
      parentId = 6;
      break;
    case 3:
      parentId = 7;
      break;
  }
  //print(name);

  birdsList = birds.where((i) => i.area.contains(areaId)).toList();
  birdsList.sort((a, b) => a.name.compareTo(b.name));

  return Column(
    children: [
      // Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: Text("Сортировка по алфавиту"),
      // ),
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
                                  color: const Color.fromARGB(255, 43, 43, 43),
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
                                    parent: parentId,
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
