import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_birds/constants.dart';
import 'package:flutter_birds/screens/about.dart';
import 'package:flutter_birds/screens/home/components/body.dart';
import 'package:flutter_birds/screens/list_areas.dart';
import 'package:flutter_birds/screens/list_screen.dart';
import 'package:flutter_birds/screens/list_screen_arrival.dart';
import 'package:flutter_birds/screens/taxonomy_screen.dart';

import '../../gnav_bar.dart';
import '../../list_birds.dart';
import '../details/details_screen.dart';
import '../redbook.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
// const HomeScreen({super.key});
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
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
                      onPressed: () {
                        SystemNavigator.pop();
//                        exit(0);
                      },
                      child: Text(locale == 'ru' ? 'Да' : 'Yes'),
                    ),
                  ],
                ),
              ) ??
              false;
        },
        child: Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.white),
            title: Text(
              locale == 'ru' ? 'Птицы Томской области' : 'Birds of Siberia',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                tooltip: locale == 'ru' ? 'Поиск' : 'Search',
                onPressed: () {
                  showSearch(context: context, delegate: MySearchDelegate());
                },
              ),
            ],
            backgroundColor: kBackColor,
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.blue
                          : kBackgroundColor,
                      image: DecorationImage(
                          image: AssetImage("assets/images/splash.png"),
                          fit: BoxFit.cover)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 70),
                    child: Stack(
                      children: <Widget>[
                        Text(
                          locale == 'ru'
                              ? 'Птицы Томской области'
                              : 'Birds of Siberia',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 4
                              ..color =
                                  const Color.fromARGB(255, 240, 239, 228),
                          ),
                        ),
                        Text(
                          locale == 'ru'
                              ? 'Птицы Томской области'
                              : 'Birds of Siberia',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade800),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 24),
                          child: Text(
                            locale == 'ru'
                                ? '90 из 346 видов\n(на 2023)'
                                : '90 species from 346\n(2023 year)',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.shade800),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ListTile(
                  title: InkWell(
                    onTap: () {
                      Theme.of(context).brightness == Brightness.dark
                          ? AdaptiveTheme.of(context).setLight()
                          : AdaptiveTheme.of(context).setDark();
                    },
                    child: Row(
                      children: [
                        Text(locale == 'ru'
                            ? "Переключить тему"
                            : 'Change Theme'),
                        SizedBox(
                            width: 32,
                            height: 32,
                            child: Icon(
                                Theme.of(context).brightness == Brightness.dark
                                    ? Icons.light_mode_outlined
                                    : Icons.brightness_2,
                                size: 20,
                                color: Theme.of(context).brightness ==
                                        Brightness.dark
                                    ? Colors.white
                                    : Colors.grey.shade800)),
                      ],
                    ),
                  ),
                  //title: const Text("Тема"),
                  onTap: () {},
                ),
                DrawerMenuItem(
                  title: locale == 'ru' ? 'Биотопы' : 'Biotopes',
                  screen: AreasScreen(),
                  icon: Icons.place_outlined,
                ),
                DrawerMenuItem(
                  title: locale == 'ru'
                      ? 'Список птиц по алфавиту'
                      : 'Alphabetical order',
                  screen: ListScreen(
                    birds: [],
                  ),
                  icon: Icons.audiotrack_outlined,
                ),
                DrawerMenuItem(
                  title: locale == 'ru'
                      ? 'Фенологический список \n(по времени начала пения\n в окрестностях Томска)'
                      : 'By start of singing time',
                  screen: ListScreenArrival(
                    birds: [],
                  ),
                  icon: Icons.timelapse_rounded,
                ),
                DrawerMenuItem(
                  title: locale == 'ru'
                      ? 'Систематический список'
                      : 'Systematic List',
                  screen: TaxonomyScreen(),
                  icon: Icons.more_vert,
                ),
                DrawerMenuItem(
                  title: locale == 'ru'
                      ? 'Красная Книга Томской области'
                      : 'Redbook',
                  screen: RedbookScreen(),
                  icon: Icons.menu_book_sharp,
                ),
                DrawerMenuItem(
                  title: locale == 'ru' ? 'О проекте' : 'About',
                  screen: AboutScreen(),
                  icon: Icons.info_outline,
                ),
              ],
            ),
          ),

          body: Body(),
          //bottomNavigationBar: BottomNavBar(1),
          bottomNavigationBar: GNavBar(page: 0),
        ),
      ),
    );
  }
}

class DrawerMenuItem extends StatelessWidget {
  final String title;
  final Widget screen;
  final IconData icon;
  const DrawerMenuItem(
      {super.key,
      required this.title,
      required this.screen,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: ListTile(
        trailing: Icon(icon),
        title:
            Text(title, style: TextStyle(color: Colors.black87, fontSize: 14)),
        //title: const Text("Тема"),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => screen));
        },
      ),
    );
  }
}

class MySearchDelegate extends SearchDelegate {
  List<BirdDataModel> searchResults = birds;

  @override
  String get searchFieldLabel =>
      locale == 'ru' ? 'Введите название птицы' : 'Enter bird name';

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
    searchResults.sort((a, b) => a.name.compareTo(b.name));
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
    searchResults.sort((a, b) => a.name.compareTo(b.name));
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
