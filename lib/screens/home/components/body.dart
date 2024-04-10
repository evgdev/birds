import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:flutter_birds/constants.dart';
import 'package:flutter_birds/screens/home/components/show_month_date.dart';
import 'package:intl/intl.dart';
import '../../details/details_screen.dart';
import '../../details/forest_area_screen.dart';
import 'areas.dart';
import '/list_birds.dart';
import 'redbook_home_part.dart';

var now = DateTime.now();
var formatter = DateFormat('MM');
String cdate = formatter.format(now);

const int checked = 3;

// List birds2 = [
//   BirdDataModel(name: "Синица", imageUrl: 'great_tit', desc: "Малая птица"),
//   BirdDataModel(name: "Выпь", imageUrl: 'img_main', desc: "Большая птица"),
//   BirdDataModel(name: "Выпь", imageUrl: 'image_3', desc: """
//                 sad
//                   Below hr
//                 and do not follow other guardians apart from Him. Little do
//                 """),
// ];
// var summerBirds = birds2.where((p) => p.name == "Выпь");

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> months = HashMap();
    months['01'] = 'Январь';
    months['02'] = 'Февраль';
    months['03'] = 'Март';
    months['04'] = 'Апрель';
    months['05'] = 'Май';
    months['06'] = 'Июнь';
    months['07'] = 'Июль';
    months['08'] = 'Август';
    months['09'] = 'Сентябрь';
    months['10'] = 'Октябрь';
    months['11'] = 'Ноябрь';
    months['12'] = 'Декабрь';

    return Stack(fit: StackFit.loose, children: [
      Positioned.fill(
        child: Image.asset(
          "assets/images/flock2.png",
          repeat: ImageRepeat.repeat,
        ),
      ),
      Container(
        color: Theme.of(context).dialogBackgroundColor,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              showMonthBirds(cdate),
              if (checked == 3)
                Text(
                  locale == 'ru' ? 'Местообитания' : 'Biotopes',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    AreaCard(
                        image: 'assets/images/forest.jpg',
                        //image: "assets/images/image_1.png",
                        title: locale == 'ru' ? "Смешанный лес" : "Forest",
                        //title: "Синица",
                        press: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForestScreen(
                                        name: locale == 'ru'
                                            ? "Смешанный лес"
                                            : "Forest",
                                        areaId: 1,
                                      )));
                        }),
                    Divider(),
                    AreaCard(
                        image: 'assets/images/field.jpg',
                        //image: "assets/images/image_1.png",
                        title: locale == 'ru' ? "Пойменный луг" : "Meadow",
                        //title: "Синица",
                        press: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForestScreen(
                                        name: locale == 'ru'
                                            ? "Пойменный луг"
                                            : "Meadow",
                                        areaId: 2,
                                      )));
                        }),
                    Divider(),
                    AreaCard(
                        image: 'assets/images/city.jpg',
                        //image: "assets/images/image_1.png",
                        title: locale == 'ru' ? "Населенный пункт" : "City",
                        //title: "Синица",
                        press: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForestScreen(
                                        name: locale == 'ru'
                                            ? "Населенный пункт"
                                            : "City",
                                        areaId: 3,
                                      )));
                        }),
                  ],
                ),
              ),
              Text(
                locale == 'ru'
                    ? "Красная Книга Томской области"
                    : "Redbook list",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              RedbookHomePartBirds(),
            ],
          ),
        ),
      ),
    ]);
  }
}

class MySearchDelegate extends SearchDelegate {
  List<BirdDataModel> searchResults = birds;
  @override
  String get searchFieldLabel =>
      locale == 'ru' ? 'Введите название птицы' : 'enter bird name';

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
  Widget buildResults(BuildContext context) {
    List<BirdDataModel> suggestions = searchResults.where((bird) {
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
                      builder: (context) => DetailsScreen(
                            bird: suggestion,
                            parent: 0,
                          )));
            },
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<BirdDataModel> suggestions = searchResults.where((bird) {
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
                      builder: (context) => DetailsScreen(
                            bird: suggestion,
                            parent: 0,
                          )));
            },
          );
        });
  }
}
