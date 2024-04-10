// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'details/forest_area_screen.dart';
// #docregion platform_imports
// Import for Android features.
// import 'package:webview_flutter_android/webview_flutter_android.dart';
// Import for iOS features.
// import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';
// #enddocregion platform_imports

class AboutScreen extends StatefulWidget {
  AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  // void initState() {
  //   super.initState();
  //   // controller = WebViewController()
  //   //   ..loadRequest(
  //   //     Uri.parse('https://karachakov.ru'),
  //   //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: PageView(
          children: <Widget>[
            CustomScrollView(
              slivers: [
                SliverAppBar(
                  expandedHeight: 150.0,
                  pinned: true,
                  stretch: false,
                  backgroundColor: Colors.green[900],
                  automaticallyImplyLeading: false,
                  flexibleSpace: FlexibleSpaceBar(
                    title: Text(
                      'Холодная субтропическая оранжерея',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    background: Image.asset(
                      'assets/images/subtropic_header.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) =>
                        //ListTile(title: Text('index $index')),
                        Card(
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
                                "assets/images/redbook/hawk.png"), //add image location here
                          ),
                          title: RichText(
                              text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: " \n$index",
                                style: Theme.of(context).brightness ==
                                        Brightness.dark
                                    ? TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      )
                                    : TextStyle(
                                        fontSize: 15,
                                        color: const Color.fromARGB(
                                            255, 43, 43, 43),
                                        fontWeight: FontWeight.w400,
                                      ),
                              ),
                            ],
                          )),
                          selectedTileColor: Colors.orange[100],
                          onTap: () {},
                          visualDensity: VisualDensity(vertical: 3),
                        ),
                      ),
                    ),
                    childCount: 20,
                  ),
                )
              ],
            ),
            CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => ListTile(title: Text('index $index')),
                    childCount: 20,
                  ),
                )
              ],
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Image.asset("assets/images/cold_subtropics.jpg").image,
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Container(
                      width: double.infinity,
                      color: Color.fromARGB(100, 22, 44, 33),
                      margin: EdgeInsets.all(20),
                      padding: EdgeInsets.all(10),
                      child: Column(children: <Widget>[
                        Text(
                          "Холодная субтропическая оранжерея",
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Высота: 8-31м",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Площадь: 1100м",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Температура зимой: 6-8\u2103",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Температура летом: 20-25\u2103",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ),
                      ])),
                  Expanded(child: SizedBox()),
                  Container(
                    width: double.infinity,
                    color: Color.fromARGB(99, 10, 20, 15),
                    margin: EdgeInsets.only(bottom: 0),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          width: 265, // <-- Your width

                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  // Change your radius here
                                  borderRadius: BorderRadius.circular(6),
                                ),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ForestScreen(
                                          name: locale == 'ru'
                                              ? "Смешанный лес"
                                              : "Forest",
                                          areaId: 1)));
                            },
                            child: Text(
                              'Список видов',
                              style: TextStyle(
                                  fontSize: 18, color: Colors.black87),
                            ),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Spacer(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4),
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      // Change your radius here
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ForestScreen(
                                              name: locale == 'ru'
                                                  ? "Смешанный лес"
                                                  : "Forest",
                                              areaId: 1)));
                                },
                                child: Text(
                                  'Аудиогид',
                                  style: TextStyle(color: Colors.black87),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4),
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      // Change your radius here
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ForestScreen(
                                              name: locale == 'ru'
                                                  ? "Смешанный лес"
                                                  : "Forest",
                                              areaId: 1)));
                                },
                                child: Text(
                                  'О субтропиках',
                                  style: TextStyle(color: Colors.black87),
                                ),
                              ),
                            ),
                            Spacer()
                          ],
                        ),
                        Container(
                          color: Colors.black38,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Оранжерея является второй по высоте в России. Здесь выращивается 300 видов и сортов растений из Восточной Азии, Восточной Австралии, Новой Зеландии, востока Северной Америки и юго-востока Южной Америки",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 800,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Image.asset("assets/images/warm_subtropics.jpg").image,
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    color: Color.fromARGB(100, 22, 44, 33),
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(40),
                    child: Text(
                      "Тёплые субтропики",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 460),
                  Container(
                    width: double.infinity,
                    color: Color.fromARGB(100, 22, 44, 33),
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.all(40),
                    child: Text(
                      "Краткое описание",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 800,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Image.asset("assets/images/tropic.jpg").image,
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    color: Color.fromARGB(100, 22, 44, 33),
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(40),
                    child: Text(
                      "Тропики",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 460),
                  Container(
                    width: double.infinity,
                    color: Color.fromARGB(100, 22, 44, 33),
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.all(40),
                    child: Text(
                      "Краткое описание",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 800,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Image.asset("assets/images/tropic_2.jpg").image,
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    color: Color.fromARGB(100, 22, 44, 33),
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(40),
                    child: Text(
                      "Влажные тропики",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 460),
                  Container(
                    width: double.infinity,
                    color: Color.fromARGB(100, 22, 44, 33),
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.all(40),
                    child: Text(
                      "Краткое описание",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

/*
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            locale == 'ru' ? "Птицы Томской области" : 'Birds of Siberia',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: kBackColor,
        ),
        //        body: WebViewWidget(controller: controller),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(locale == 'ru'
                  ? "assets/images/app_about.jpg"
                  : "assets/images/app_about_en.jpg"),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(bottom: 10),
                  margin: EdgeInsets.only(bottom: 10),
                  child: Column(
                    children: [
                      if (locale == 'ru')
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SupportScreen(),
                                ),
                              );
                            },
                            child: Text(
                              locale == 'ru' ? 'Поддержать проект' : 'Support ',
                              style: TextStyle(color: Colors.grey.shade800),
                            )),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: RichText(
                          text: TextSpan(
                            text: locale == 'ru' ? 'О проекте' : 'About',
                            style: TextStyle(
                                color: Theme.of(context).brightness ==
                                        Brightness.dark
                                    ? Colors.white
                                    : Colors.grey.shade800,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            text: locale == 'ru'
                                ? "Приложение содержит звуковые фрагменты 58 обычных видов птиц обитающих в зоне южной тайги Западной Сибири, которые своими песнями создают голосовой фон здешних мест. Виды представлены в соответствии со сроками активного пения их в природе, учитывая сочетание соседних фрагментов. Каждый фрагмент длится около 1,5 минут (от 31 с. до 2 м. 47 с.).   Каждый голосовой фрагмент дополнительно иллюстрирован фотографией типичного биотопа в тот фенологический  период, когда вид интенсивно поет и кратким очерком, а  также рисунками и фотографиями  птиц, их гнезд, что обеспечивает комплексное знакомство с представленными видами.\n\nПроект представляет интерес всем любителям природы, тем, кто стремится лучше узнать окружающий нас мир, а также всем, кто занимается обучением и воспитанием детей."
                                : "The application contains audio fragments of 58 common bird species inhabiting the southern taiga zone of Western Siberia, which create an acoustic background of the local area with their songs. The species are presented in accordance with the timing of their active singing in nature, taking into account the combination of adjacent fragments. Each fragment lasts about 1.5 minutes (from 31 seconds to 2 minutes and 47 seconds). Each vocal fragment is additionally illustrated with a brief description,  and photographs of birds, providing comprehensive acquaintance with the represented species.\n\nAll 58 species are divided into three types of biotopes - forest, meadow and city.\n\nThe project is of interest to all nature lovers, those who strive to learn more about the world around us, as well as anyone involved in the education of children. As well, there are 46 bird species included to Redbook of Tomsk region.\n\nIf you like an idea of this App, you can support any donation to Paypal",
                            style: TextStyle(
                                color: Theme.of(context).brightness ==
                                        Brightness.dark
                                    ? Colors.white
                                    : Colors.grey.shade800,
                                fontSize: 16),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () async {
                          await Clipboard.setData(
                              ClipboardData(text: "siberiatrekking@gmail.com"));
                          // copied successfully
                        },
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(
                              fontSize: 18, color: Colors.black87),
                        ),
                        child: Text(
                          "Paypal: siberiatrekking@gmail.com",
                          style: TextStyle(color: Colors.black),
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ),
        //bottomNavigationBar: BottomNavBar(1),
        bottomNavigationBar: GNavBar(page: 0),
        // bottomNavigationBar: GNav(
        //   backgroundColor: Color.fromARGB(255, 12, 58, 11),
        //   color: Colors.white,
        //   activeColor: Colors.white,
        //   tabBackgroundColor: Colors.grey.shade900,
        //   gap: 8,
        //   padding: EdgeInsets.all(16),
        //   tabs: const [
        //     GButton(
        //       icon: Icons.home,
        //       text: "Главная",
        //     ),
        //     GButton(
        //       icon: Icons.audiotrack_outlined,
        //       text: "Голоса птиц",
        //     ),
        //     GButton(
        //       icon: Icons.book_outlined,
        //       text: "Красная Книга",
        //     ),
        //     GButton(
        //       icon: Icons.info_outline,
        //       text: "Инфо",
        //     ),
        //   ],
        //   selectedIndex: 3,
        //   onTabChange: (index) {
        //     switch (index) {
        //       case 0:
        //         Navigator.push(context,
        //             MaterialPageRoute(builder: (context) => HomeScreen()));
        //         break;
        //       case 1:
        //         Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //                 builder: (context) => ListScreen(
        //                       birds: [],
        //                     )));
        //         break;
        //       case 2:
        //         Navigator.push(context,
        //             MaterialPageRoute(builder: (context) => RedbookScreen()));
        //         break;
        //       case 3:
        //         {}
        //         break;
        //     }
        //   },
        // ),
      ),
    );
  }
  */
}
