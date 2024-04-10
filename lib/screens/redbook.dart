import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_birds/gnav_bar.dart';
import 'package:flutter_birds/screens/redbook_detail.dart';
import 'package:flutter_birds/screens/redbook_part_screen.dart';
import '../constants.dart';
import 'redbook_list.dart';

class RedbookScreen extends StatelessWidget {
  RedbookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return await showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text(locale == 'ru' ? 'Вы уверены?' : 'Are you sure?'),
                content: Text(locale == 'ru'
                    ? 'Закрыть приложение?'
                    : 'Do you want to exit an App'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(false),
                    child: Text(locale == 'ru' ? 'Нет' : 'No'),
                  ),
                  TextButton(
                    onPressed: () => SystemNavigator.pop(),
                    child: Text(locale == 'ru' ? 'Да' : 'Yes'),
                  ),
                ],
              ),
            ) ??
            false;
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          iconTheme: IconThemeData(
            color: const Color.fromARGB(
                255, 255, 255, 255), //change your color here
          ),
          title: Text(
              locale == 'ru'
                  ? 'Красная книга Томской Области'
                  : 'Redbook of Tomsk region',
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
        body: BodyLayout(),
        bottomNavigationBar: GNavBar(page: 3),
      ),
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
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: RedbookPartItem(
                  title: locale == 'ru' ? 'Утиные' : "Anatidae",
                  partList: "geese",
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: RedbookPartItem(
                  title: locale == 'ru' ? "Ястребиные" : "Accipitridae",
                  partList: "hawk",
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: RedbookPartItem(
                  title: locale == 'ru' ? 'Соколиные' : "Falconidae",
                  partList: "falcon",
                ),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: RedbookPartItem(
                    title: locale == 'ru' ? 'Журавлиные' : 'Gruidae',
                    partList: "crane",
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: RedbookPartItem(
                  title: locale == 'ru' ? 'Бекасовые' : 'Scolopacidae',
                  partList: "sandpiper",
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: RedbookPartItem(
                  title: locale == 'ru' ? 'Совиные' : 'Strigidae',
                  partList: "owl",
                ),
              ),
            ],
          ),
        ),
        Expanded(child: _myListView(context)),
      ],
    );
  }
}

class RedbookPartItem extends StatelessWidget {
  final String title, partList;
  const RedbookPartItem(
      {super.key, required this.title, required this.partList});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: kBackColor),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => RedbookPartScreen(
                        partList: partList,
                      )));
        },
        child: Text(title, style: TextStyle(color: Colors.white)));
  }
}

Widget _myListView(BuildContext context) {
  final List birds = BirdList().birds;

  return ListView.builder(
      itemCount: birds.length,
      itemBuilder: (context, index) {
        var birdCurrent = birds[index];
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
              title: RichText(
                  text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: "${index + 1 + birdCurrent.name}. ",
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
            } else
              query = '';
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
