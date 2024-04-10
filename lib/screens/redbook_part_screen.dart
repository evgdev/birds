import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_birds/screens/redbook.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../constants.dart';
import 'home/home_screen.dart';
import 'list_areas.dart';
import 'list_screen.dart';
import 'redbook_detail.dart';
import 'redbook_list.dart';

class RedbookPartScreen extends StatefulWidget {
  RedbookPartScreen({super.key, required this.partList});

  @override
  State<RedbookPartScreen> createState() => _RedbookPartScreenState();
  final String partList;
}

class _RedbookPartScreenState extends State<RedbookPartScreen> {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> partName = HashMap();
    partName['geese'] = locale == 'ru' ? 'Утиные' : "Anatidae";
    partName['hawk'] = locale == 'ru' ? 'Ястребиные' : "Accipitridae";
    partName['falcon'] = locale == 'ru' ? 'Соколиные' : "Falconidae";
    partName['crane'] = locale == 'ru' ? 'Журавлиные' : 'Gruidae';
    partName['sandpiper'] = locale == 'ru' ? 'Бекасовые' : 'Scolopacidae';
    partName['owl'] = locale == 'ru' ? 'Совиные' : 'Strigidae';

//    final List birds2 =        BirdList().birds.where((i) => i.month == widget.partList).toList();
    final List birds2 = BirdList()
        .birds
        .where((i) => i.family == partName[widget.partList])
        .toList();
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color:
              const Color.fromARGB(255, 255, 255, 255), //change your color here
        ),
        title: Text(
            locale == 'ru'
                ? 'Красная книга Томской Области'
                : "Redbook of Tomsk region",
            style: TextStyle(fontSize: 16, color: Colors.white)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: locale == 'ru' ? 'Поиск' : "Search",
            onPressed: () {
              showSearch(context: context, delegate: MySearchDelegate());
            },
          ),
        ],
        backgroundColor: kBackColor,
      ),
//      appBar:           AppBar(title: Text('Красная книга ТО ${partName[widget.part_list]}')),
      body: BodyLayout(
        partList: widget.partList,
        partName: partName[widget.partList].toString(),
        birds2: birds2,
      ),
      //bottomNavigationBar: BottomNavBar(2),
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
            text: locale == 'ru' ? "Главная" : "Home",
          ),
          GButton(
            icon: Icons.place_outlined,
            text: locale == 'ru' ? "Биотопы" : "Biotopes",
          ),
          GButton(
            icon: Icons.audiotrack_outlined,
            text: locale == 'ru' ? "Голоса птиц" : "Voices of birds",
          ),
          GButton(
            icon: Icons.book_outlined,
            text: locale == 'ru' ? "Красная Книга" : "Redbook",
          ),
        ],
        selectedIndex: 3,
        onTabChange: (index) {
          switch (index) {
            case 0:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
              break;
            case 1:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AreasScreen()));
              break;
            case 2:
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ListScreen(
                            birds: [],
                          )));
              break;
            case 3:
              {}
              break;
          }
        },
      ),
    );
  }
}

class BodyLayout extends StatefulWidget {
  final String partList;
  final String partName;
  final List birds2;
  const BodyLayout(
      {super.key,
      required this.partList,
      required this.partName,
      required this.birds2});
  @override
  State<BodyLayout> createState() => _BodyLayoutState();
}

class _BodyLayoutState extends State<BodyLayout> {
  @override
  Widget build(
    BuildContext context,
  ) {
    return Column(
      children: [
        Row(
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: ElevatedButton(
                  onPressed: () {
                    if (widget.partList != "geese") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RedbookPartScreen(
                                    partList: "geese",
                                  )));
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RedbookScreen()));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: widget.partName ==
                              (locale == 'ru' ? 'Утиные' : "Anatidae")
                          ? Colors.red[800]
                          : kBackColor),
                  child: Text(
                    locale == 'ru' ? 'Утиные' : "Anatidae",
                    style: TextStyle(color: Colors.white),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: ElevatedButton(
                onPressed: () {
                  if (widget.partList != "hawk") {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RedbookPartScreen(
                                  partList: "hawk",
                                )));
                  } else {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RedbookScreen()));
                  }
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: widget.partName ==
                            (locale == 'ru' ? "Ястребиные" : "Accipitridae")
                        ? Colors.red[800]
                        : kBackColor),
                child: Text(locale == 'ru' ? "Ястребиные" : "Accipitridae",
                    style: TextStyle(color: Colors.white)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: ElevatedButton(
                onPressed: () {
                  if (widget.partList != "falcon") {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RedbookPartScreen(
                                  partList: "falcon",
                                )));
                  } else {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RedbookScreen()));
                  }
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: widget.partName ==
                            (locale == 'ru' ? "Соколиные" : "Falconidae")
                        ? Colors.red[800]
                        : kBackColor),
                child: Text(locale == 'ru' ? "Соколиные" : "Falconidae",
                    style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: ElevatedButton(
                  onPressed: () {
                    if (widget.partList != "crane") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RedbookPartScreen(
                                    partList: "crane",
                                  )));
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RedbookScreen()));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: widget.partName ==
                              (locale == 'ru' ? "Журавлиные" : "Gruidae")
                          ? Colors.red[800]
                          : kBackColor),
                  child: Text(locale == 'ru' ? "Журавлиные" : "Gruidae",
                      style: TextStyle(color: Colors.white)),
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: ElevatedButton(
                onPressed: () {
                  if (widget.partList != "sandpiper") {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RedbookPartScreen(
                                  partList: "sandpiper",
                                )));
                  } else {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RedbookScreen()));
                  }
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: widget.partName ==
                            (locale == 'ru' ? "Бекасовые" : "Scolopacidae")
                        ? Colors.red[800]
                        : kBackColor),
                child: Text(locale == 'ru' ? "Бекасовые" : "Scolopacidae",
                    style: TextStyle(color: Colors.white)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: ElevatedButton(
                onPressed: () {
                  if (widget.partList != "owl") {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RedbookPartScreen(
                                  partList: "owl",
                                )));
                  } else {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RedbookScreen()));
                  }
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: widget.partName ==
                            (locale == 'ru' ? "Совиные" : "Strigidae")
                        ? Colors.red[800]
                        : kBackColor),
                child: Text(locale == 'ru' ? "Совиные" : "Strigidae",
                    style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
        Expanded(child: _myListView(context, widget.birds2)),
      ],
    );
  }
}

Widget _myListView(BuildContext context, List birds2) {
  return ListView.builder(
      itemCount: birds2.length,
      itemBuilder: (context, index) {
        var birdCurrent = birds2[index];
        var birdIcon = Theme.of(context).brightness == Brightness.dark
            ? birdCurrent.icon + "1"
            : birdCurrent.icon;
        return Card(
          child: Padding(
            padding: EdgeInsets.all(5),
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.all(
                    Radius.circular(10.0)), //add border radius here
                // child: Icon(
                //   Icons.favorite,
                //   color: Colors.grey,
                // )
                child: Image.asset(
                    "assets/images/redbook/$birdIcon.png"), //add image location here
              ),
//               title: Text(
// //                "${birdCurrent.name} \nСем. ${birdCurrent.family}\n${birdCurrent.latin}",
//                 "${birdCurrent.name} \n${birdCurrent.latin}",
//                 style: TextStyle(fontSize: 14),
//               ),
              title: RichText(
                  text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: "${index + 1 + birdCurrent.name}",
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
                    text: " \n${birdCurrent.latin}",
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
              selectedTileColor: Colors.orange[100],
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RedbookDetails(
                              bird: birdCurrent,
                            )));
              },
              visualDensity: VisualDensity(vertical: 3),
            ),
          ),
        );
      });
}

class MySearchDelegate extends SearchDelegate {
  final List<BirdRedbookDataModel> searchResults = BirdList().birds;

  @override
  Widget? buildLeading(BuildContext context) => IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => close(context, null),
      );

  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            if (query.isEmpty) {
              close(context, null);
            } else {
              query = '';
            }
          },
        )
      ];

  @override
  Widget buildResults(BuildContext context) => Center(
          child: Card(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: ListTile(
            title: Text(query),
            onTap: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => SearchScreen(
              //               searchValue: query,
              //             )));
            },
            visualDensity: VisualDensity(vertical: 3),
          ),
        ),
      ));

  @override
  Widget buildSuggestions(BuildContext context) {
    List<BirdRedbookDataModel> suggestions = searchResults.where((bird) {
      final result = bird.name.toLowerCase();
      final input = query.toLowerCase();
      return result.contains(input);
    }).toList();

    return ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: (context, index) {
          final suggestion = suggestions[index];
          return ListTile(
            leading: Icon(Icons.arrow_circle_right),
            title: Text(suggestion.name),
            onTap: () {
              // query = suggestion.name;
              // showResults(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RedbookDetails(
                            bird: suggestion,
                          )));
            },
          );
        });
  }
}
