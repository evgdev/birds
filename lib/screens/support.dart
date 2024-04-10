// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_birds/gnav_bar.dart';
import 'package:url_launcher/url_launcher.dart';
import '../constants.dart';

class SupportScreen extends StatelessWidget {
  SupportScreen({super.key});

  // void initState() {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            "Птицы Томской области",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: kBackColor,
        ),
//        body: WebViewWidget(controller: controller),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/app_about.jpg"),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(bottom: 10),
                  margin: EdgeInsets.only(bottom: 10),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RichText(
                          text: TextSpan(
                            text: 'Поддержка проекта',
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
                            text:
                                "При нажатии кнопки \"Пожертвовать\", вы будете перенаправлены на страницу yoomoney.ru . \n\nПриложение не собирает  и не передает какую-либо информацию о Вас. \n\n",
                            style: TextStyle(
                              color: Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? Colors.white
                                  : Colors.grey.shade800,
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            launchUrl(
                              Uri.parse(
                                  "https://yoomoney.ru/to/4100118405264344"),
                              mode: LaunchMode.platformDefault,
                              webViewConfiguration: const WebViewConfiguration(
                                  enableJavaScript: true),
                            );
                          },
                          child: Text(
                            'Пожертвовать',
                            style: TextStyle(
                                color: Theme.of(context).brightness ==
                                        Brightness.dark
                                    ? Colors.white
                                    : Colors.grey.shade800),
                          )),
                    ],
                  )),
            ],
          ),
        ),
        //bottomNavigationBar: BottomNavBar(1),
        bottomNavigationBar: GNavBar(page: 0),
      ),
    );
  }
}
