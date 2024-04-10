import 'package:flutter/material.dart';
import 'package:flutter_birds/gnav_bar.dart';
import 'package:flutter_birds/screens/list_screen_arrival.dart';
import '../constants.dart';
import '../list_birds.dart';
import 'details/details_screen.dart';
import 'list_screen.dart';

class TaxonomyScreen extends StatefulWidget {
  TaxonomyScreen({super.key});

  @override
  State<TaxonomyScreen> createState() => _TaxonomyScreenState();
}

class _TaxonomyScreenState extends State<TaxonomyScreen> {
  @override
  Widget build(BuildContext context) {
//    final List birds2 =        BirdList().birds.where((i) => i.month == widget.partList).toList();
    // final List birds2 = BirdList()
    //     .birds
    //     .where((i) => i.family == partName[widget.partList])
    //     .toList();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        iconTheme: IconThemeData(
          color:
              const Color.fromARGB(255, 255, 255, 255), //change your color here
        ),
        title: Text(locale == 'ru' ? 'Голоса птиц' : 'Birds of Siberia',
            style: TextStyle(fontSize: 18, color: Colors.white)),
        actions: <Widget>[
          SizedBox(
            height: 32,
            width: 32,
            child: IconButton(
              icon: Icon(Icons.sort_by_alpha),
              tooltip: locale == 'ru' ? 'По названию' : 'By name',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ListScreen(
                              birds: [],
                            )));
              },
            ),
          ),
          SizedBox(
            height: 32,
            width: 32,
            child: IconButton(
              icon: Icon(Icons.timelapse_rounded),
              tooltip:
                  locale == 'ru' ? 'По времени прилета' : 'By dates of arrival',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ListScreenArrival(birds: [])));
              },
            ),
          ),
          SizedBox(
            height: 32,
            width: 32,
            child: IconButton(
              icon: Icon(Icons.account_tree_outlined),
              tooltip: locale == 'ru' ? 'По систематике' : 'Taxonomy',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TaxonomyScreen()));
              },
              color: Colors.yellow,
            ),
          ),
          SizedBox(
            height: 32,
            width: 32,
            child: IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Поиск',
              onPressed: () {
                showSearch(context: context, delegate: MySearchDelegate());
              },
            ),
          ),
        ],
        backgroundColor: kBackColor,
      ),
//      appBar:           AppBar(title: Text('Красная книга ТО ${partName[widget.part_list]}')),
      body: BodyLayout(),
      bottomNavigationBar: GNavBar(page: 2),
    );
  }
}

class BodyLayout extends StatefulWidget {
  const BodyLayout({super.key});
  @override
  State<BodyLayout> createState() => _BodyLayoutState();
}

class BirdOrder {
  final String latin;
  final String title;
  final List<String> families;
  const BirdOrder(
      {required this.latin, required this.title, required this.families});
}

class _BodyLayoutState extends State<BodyLayout> {
  List<BirdOrder> birdOrders = [
    BirdOrder(
        latin: 'Charadriiformes',
        title: locale == 'ru' ? 'Ржанкообразные' : 'Charadriiformes',
        families: ["Бекасовые"]),
    const BirdOrder(
        latin: 'Cuculiformes',
        title: locale == 'ru' ? 'Кукушкообразные' : 'Cuculiformes',
        families: ["Кукушковые"]),
    const BirdOrder(
        latin: 'Apodiformes',
        title: locale == 'ru' ? 'Стрижеобразные' : 'Apodiformes',
        families: ["Стрижиные"]),
    const BirdOrder(
        latin: 'Piciformes',
        title: locale == 'ru' ? 'Дятлообразные' : 'Piciformes',
        families: ["Дятловые"]),
    const BirdOrder(
        latin: 'Passeriformes',
        title: locale == 'ru' ? 'Воробьинообразные' : 'Passeriformes',
        families: [
          "Воробьиные",
          "Врановые",
          "Вьюрковые",
          "Дроздовые",
          "Иволговые",
          "Камышовковые",
          "Мухоловковые",
          "Поползневые",
          "Овсянковые",
          "Пеночковые",
          "Свиристелевые",
          "Славковые",
          "Синицевые",
          "Скворцовые",
          "Сверчковые",
          "Трясогузковые",
        ]),
  ];

  @override
  Widget build(
    BuildContext context,
  ) {
    return _myListView(context, birdOrders);
  }
}

Widget _myListView(BuildContext context, List birdOrders) {
  // final Map<String, String> birdOrders = HashMap();
  // birdOrders['charadriiformes'] = 'Ржанкообразные';
  // birdOrders['cuculiformes'] = 'Кукушки';
  // birdOrders['apodiformes'] = 'Стрижеобразные';
  // birdOrders['piciformes'] = 'Дятлообразные';
  // birdOrders['passeriformes'] = 'Воробьинообразные';
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(locale == 'ru'
            ? "Систематический список представленных в проекте видов (58)"
            : 'Taxonomy list of birds (Order->Family->Species)'),
      ),
      Expanded(
        child: ListView.builder(
            itemCount: birdOrders.length,
            itemBuilder: (context, index) {
              var currentOrder = birdOrders[index];
              return Card(
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: ListTile(
                    leading: SizedBox(
                      width: 100,
                      height: 60,
                      child: Image.asset(
                          // ignore: prefer_interpolation_to_compose_strings
                          "${"assets/images/" + currentOrder.latin}.jpg",
                          fit: BoxFit
                              .cover), //add image location here, fit: BoxFit.cover),
                    ),
                    title: Text(
                      locale == 'ru'
                          // ignore: prefer_interpolation_to_compose_strings
                          ? "${"Отряд " + currentOrder.title}\n" +
                              currentOrder.latin
                          // ignore: prefer_interpolation_to_compose_strings
                          : "Order " + currentOrder.latin,
                      //birdOrders[birdCurrent]!,
                      style: TextStyle(fontSize: 14),
                    ),
                    selectedTileColor: Colors.orange[100],
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              Page2(birdOrder: currentOrder)));
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => DetailsScreen(
                      //               bird: birdCurrent,
                      //             )));
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

class Page2 extends StatelessWidget {
  final BirdOrder birdOrder;
  const Page2({super.key, required this.birdOrder});

  @override
  Widget build(BuildContext context) {
//    print("locale: " + locale);
    String appTitle = "";
    if (locale == "en") {
      appTitle = "Birds of Siberia";
    } else {
      appTitle = "Голоса птиц";
    }
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        iconTheme: IconThemeData(
          color:
              const Color.fromARGB(255, 255, 255, 255), //change your color here
        ),
        backgroundColor: kBackColor,
        title:
            Text(appTitle, style: TextStyle(fontSize: 18, color: Colors.white)),
        actions: <Widget>[
          SizedBox(
            height: 32,
            width: 32,
            child: IconButton(
              icon: Icon(Icons.sort_by_alpha),
              tooltip: 'По названию',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ListScreen(
                              birds: [],
                            )));
              },
            ),
          ),
          SizedBox(
            height: 32,
            width: 32,
            child: IconButton(
              icon: Icon(Icons.timelapse_rounded),
              tooltip: 'По времени прилета',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ListScreenArrival(birds: [])));
              },
            ),
          ),
          SizedBox(
            height: 32,
            width: 32,
            child: IconButton(
              icon: Icon(Icons.account_tree_outlined),
              tooltip: 'По систематике',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TaxonomyScreen()));
              },
              color: Colors.yellow,
            ),
          ),
          SizedBox(
            height: 32,
            width: 32,
            child: IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Поиск',
              onPressed: () {
                showSearch(context: context, delegate: MySearchDelegate());
              },
            ),
          ),
        ],
      ),
      body: _myListView2(context, birdOrder.title, birdOrder.families),
      bottomNavigationBar: GNavBar(page: 2),
    );
  }
}

Widget _myListView2(BuildContext context, String birdOrder, List birdFamilies) {
//  Map<String, String> map1 = {};
  // Map<String, String> map1 = {
  //   'Ржанкообразные': 'Charadriiformes',
  //   'Кукушкообразные': 'Cuculiformes',
  //   'Стрижеобразные': 'Apodiformes',
  //   'Дятлообразные': 'Piciformes',
  //   'Воробьинообразные': 'Passeriformes',
  // };

  Map<String, String> mapEn = locale == "en"
      ? {
          'Камышовковые': 'Acrocephalidae',
          'Бекасовые': 'Scolopacidae',
          'Кукушковые': 'Cuculidae',
          'Стрижиные': 'Apodidae',
          'Дятловые': 'Picidae',
          'Трясогузковые': 'Motacillidae',
          'Иволговые': 'Oriolidae',
          'Скворцовые': 'Sturnidae',
          'Воробьиные': 'Passeridae',
          'Врановые': 'Corvidae',
          'Вьюрковые': 'Fringillidae',
          'Дроздовые': 'Turdidae',
          'Мухоловковые': 'Muscicapidae',
          'Поползневые': 'Sittidae',
          'Овсянковые': 'Emberizidae',
          'Пеночковые': 'Phylloscopidae',
          'Свиристелевые': 'Bombycillidae',
          'Славковые': 'Sylviidae',
          'Синицевые': 'Paridae',
          'Сверчковые': 'Locustellidae'
        }
      : {};

  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(locale == 'ru' ? "отряд $birdOrder" : "Order $birdOrder",
            style: TextStyle(fontSize: 16)),
      ),
      Expanded(
        child: ListView.builder(
            itemCount: birdFamilies.length,
            itemBuilder: (context, index) {
              var currentFamily = birdFamilies[index];
              // var currentFamilyLat = map1[currentFamily];
              var curEn = "";
              if (locale == 'en') {
                if (mapEn[currentFamily] != null) {
                  curEn = mapEn[currentFamily]!;
                }
              }

              // if (currentFamilyLat != null) {
              //   var curFam = currentFamilyLat;
              // } else {
              //   var curFam = "no_image";
              // }
              return Card(
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: ListTile(
                    leading: locale == 'ru'
                        ? null
                        : SizedBox(
                            width: 120,
                            height: 80,
                            child: Image.asset("assets/images/$curEn.jpg",
                                fit: BoxFit
                                    .fitHeight), //add image location here, fit: BoxFit.cover),
                          ),
                    title: Text(
                      locale == "en"
                          ? "Family $curEn"
                          : "Семейство $currentFamily",
                      //birdOrders[birdCurrent]!,
                      style: TextStyle(fontSize: 14),
                    ),
                    selectedTileColor: Colors.orange[100],
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Page3(
                              family: locale == "en" ? curEn : currentFamily)));
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

class Page3 extends StatelessWidget {
  final String family;
  const Page3({super.key, required this.family});

  @override
  Widget build(BuildContext context) {
    //print(locale);
    final List<BirdDataModel> birds2 = birds
        .where((i) => i.family.toLowerCase() == family.toLowerCase())
        .toList();

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          iconTheme: IconThemeData(
            color: const Color.fromARGB(
                255, 255, 255, 255), //change your color here
          ),
          title: Text(
            locale == 'ru' ? "Голоса птиц" : "Birds of Siberia",
            style: TextStyle(
              fontSize: 18,
              color: const Color.fromARGB(
                  255, 255, 255, 255), //change your color here
            ),
          ),
          backgroundColor: kBackColor,
          actions: <Widget>[
            SizedBox(
              height: 32,
              width: 32,
              child: IconButton(
                icon: Icon(Icons.sort_by_alpha),
                tooltip: 'По названию',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ListScreen(
                                birds: [],
                              )));
                },
              ),
            ),
            SizedBox(
              height: 32,
              width: 32,
              child: IconButton(
                icon: Icon(Icons.timelapse_rounded),
                tooltip: 'По времени прилета',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ListScreenArrival(birds: [])));
                },
              ),
            ),
            SizedBox(
              height: 32,
              width: 32,
              child: IconButton(
                icon: Icon(Icons.account_tree_outlined),
                tooltip: 'По систематике',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TaxonomyScreen()));
                },
                color: Colors.yellow,
              ),
            ),
            SizedBox(
              height: 32,
              width: 32,
              child: IconButton(
                icon: Icon(Icons.search),
                tooltip: 'Поиск',
                onPressed: () {
                  showSearch(context: context, delegate: MySearchDelegate());
                },
              ),
            ),
          ],
        ),
        body: _myListView3(context, family, birds2),
        bottomNavigationBar: GNavBar(page: 2));
  }
}

Widget _myListView3(
    BuildContext context, String family, List<BirdDataModel> birds2) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          locale == 'ru' ? "сем. $family" : "family $family",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      Expanded(
        child: ListView.builder(
            itemCount: birds2.length,
            itemBuilder: (context, index) {
              var currentBird = birds2[index];
              return Card(
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: ListTile(
                    leading: SizedBox(
                      width: 120,
                      height: 90,
                      child: Image.asset(
                          "assets/images/small/${currentBird.imageUrl}1.jpg",
                          fit: BoxFit
                              .fitHeight), //add image location here, fit: BoxFit.cover),
                    ),
                    title: RichText(
                        text: TextSpan(
                      style: TextStyle(fontSize: 16),
                      children: <TextSpan>[
                        TextSpan(
                            text: currentBird.name,
                            style: TextStyle(
                                color: Theme.of(context).brightness ==
                                        Brightness.dark
                                    ? Color.fromARGB(255, 252, 251, 251)
                                    : const Color.fromARGB(255, 55, 55, 55),
                                fontWeight: FontWeight.w600)),
                        TextSpan(
                            text: " \n${currentBird.latin}",
                            style: TextStyle(
                                color: Theme.of(context).brightness ==
                                        Brightness.dark
                                    ? Color.fromARGB(255, 252, 251, 251)
                                    : const Color.fromARGB(255, 53, 53, 53),
                                fontStyle: FontStyle.italic)),
                      ],
                    )),
                    selectedTileColor: Colors.orange[100],
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsScreen(
                                    bird: currentBird,
                                    parent: 2,
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

class MySearchDelegate extends SearchDelegate {
  List<BirdDataModel> searchResults = birds;

  @override
  TextStyle? get searchFieldStyle => TextStyle(
        fontSize: 18,
      );

  @override
  String get searchFieldLabel =>
      locale == 'ru' ? 'Введите название птицы' : 'Search...';

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
                            parent: 2,
                          )));
            },
          );
        });
  }
  // => Center(
  //         child: Card(
  //       child: Padding(
  //         padding: EdgeInsets.all(10),
  //         child: ListTile(
  //           title: Text("Поиск по слову: $query"),
  //           onTap: () {
  //             Navigator.push(
  //                 context,
  //                 MaterialPageRoute(
  //                     builder: (context) => SearchScreen(
  //                           searchValue: query,
  //                         )));
  //           },
  //           visualDensity: VisualDensity(vertical: 3),
  //         ),
  //       ),
  //     ));

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
                            parent: 2,
                          )));
            },
          );
        });
  }
}
