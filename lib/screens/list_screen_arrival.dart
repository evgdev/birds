import 'package:flutter/material.dart';
import 'package:flutter_birds/gnav_bar.dart';
import 'package:flutter_birds/screens/taxonomy_screen.dart';
import '../constants.dart';
import 'details/details_screen.dart';
import 'list_screen.dart';
import 'package:flutter_birds/list_birds.dart';

// ignore: must_be_immutable
class ListScreenArrival extends StatelessWidget {
  List<BirdDataModel> birds = [];
  ListScreenArrival({super.key, required this.birds});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          iconTheme: IconThemeData(
            color: Colors.white, //change your color here
          ),
          title: Text(
            locale == 'ru' ? 'Голоса птиц' : 'Birds of Siberia',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          actions: <Widget>[
            SizedBox(
              height: 32,
              width: 32,
              child: IconButton(
                icon: Icon(Icons.sort_by_alpha),
                tooltip: locale == 'ru' ? 'По названию' : 'A-Z sort',
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
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: SizedBox(
                height: 32,
                width: 32,
                child: IconButton(
                  icon: Icon(Icons.timelapse_rounded),
                  tooltip: 'По времени прилета',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ListScreenArrival(birds: [])));
                  },
                  color: Colors.yellow,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: SizedBox(
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
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 5.0),
              child: SizedBox(
                height: 32,
                width: 32,
                child: IconButton(
                  icon: Icon(Icons.search),
                  tooltip: locale == 'ru' ? 'Поиск' : 'Search',
                  onPressed: () {
                    showSearch(context: context, delegate: MySearchDelegate());
                  },
                ),
              ),
            ),
          ],
          backgroundColor: kBackColor,
        ),
        body: BodyLayout(birds: birds),
        bottomNavigationBar: GNavBar(page: 2));
  }
}

class BodyLayout extends StatelessWidget {
  BodyLayout({super.key, required List birds});

  @override
  Widget build(BuildContext context) {
    return _myListView(context, birds: birds);
  }
}

Widget _myListView(BuildContext context, {required List<BirdDataModel> birds}) {
//  birds.sort();
  //List new_birds = birds;
  birds.sort((a, b) => a.arrival.compareTo(b.arrival));

  return Column(
    children: [
      // TextField(
      //   onSubmitted: (value) => {
      //     (value.isEmpty) ? ({}) : redirect(value),
      //   },
      //   decoration: InputDecoration(
      //       labelText: "search", suffixIcon: Icon(Icons.search)),
      // ),
      Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).brightness == Brightness.dark
              ? const Color.fromARGB(255, 43, 43, 43)
              : Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            locale == 'ru'
                ? "Фенологический список. \nПо времени начала пения в окрестностях Томска"
                : "By date of start singing",
            style: Theme.of(context).brightness == Brightness.dark
                ? TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  )
                : TextStyle(
                    fontSize: 14,
                    color: const Color.fromARGB(255, 43, 43, 43),
                  ),
          ),
        ),
      ),
      Expanded(
        child: ListView.builder(
            itemCount: birds.length,
            itemBuilder: (context, index) {
              var bird = birds[index];
              return Card(
                color: index <= 13
                    ? Theme.of(context).brightness == Brightness.dark
                        ? Color.fromARGB(255, 70, 90, 70)
                        : Color.fromARGB(255, 220, 234, 245)
                    : Theme.of(context).brightness == Brightness.dark
                        ? Color.fromARGB(255, 36, 60, 89)
                        : Color.fromARGB(255, 228, 242, 228),
//                    : const Color.fromARGB(255, 215, 236, 252),
                child: Padding(
                  padding: EdgeInsets.all(10),
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
                      style: TextStyle(fontSize: 14),
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
                                  color:
                                      const Color.fromARGB(255, 217, 217, 217),
                                  fontStyle: FontStyle.italic)
                              : TextStyle(
                                  fontSize: 15,
                                  color: const Color.fromARGB(255, 43, 43, 43),
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.italic),
                        ),
                        if (index <= 13)
                          TextSpan(
                            text: locale == 'ru'
                                ? "\n(круглогодично)"
                                : "\n(year-round)",
                            style: Theme.of(context).brightness ==
                                    Brightness.dark
                                ? TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromARGB(
                                        255, 217, 217, 217),
                                  )
                                : TextStyle(
                                    fontSize: 13,
                                    color:
                                        const Color.fromARGB(255, 43, 43, 43),
                                    fontWeight: FontWeight.w400),
                          ),
                      ],
                    )),
                    trailing: Icon(Icons.west_rounded),
//                     Text("${bird.name}\n${bird.latin}"),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsScreen(
                                    bird: bird,
                                    parent: 1,
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
                            parent: 1,
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
                            parent: 1,
                          )));
            },
          );
        });
  }
}
