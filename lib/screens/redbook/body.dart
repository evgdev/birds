import 'package:flutter/material.dart';
import 'package:flutter_birds/screens/redbook/redbook_screen_big.dart';
import 'package:flutter_birds/screens/redbook/redbook_title.dart';
import 'package:flutter_birds/screens/details/map_screen.dart';
import 'package:flutter_birds/screens/redbook/image_and_icons.dart';

class Body extends StatefulWidget {
  final dynamic bird;
  final int parent;
  Body({super.key, required this.bird, required this.parent});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    // parent =0 - from ListScreen, 3 - from MonthScreen,

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
//            Text("url: $soundIndex"),
            ImageAndIcons(
              size: size,
              bird: widget.bird,
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RedbookDetailsScreenBig(
                              bird: widget.bird,
                              pic: '1',
                            )));
              },
              press2: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RedbookDetailsScreenBig(
                              bird: widget.bird,
                              pic: '2',
                            )));
              },
              pressMap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MapScreen(bird: widget.bird)));
              },
            ),

            Card(
              child: Column(
                children: [
                  Row(
                    children: [
                      Spacer(),
                      Text(
                        widget.bird.name,
                        style: Theme.of(context).brightness == Brightness.dark
                            ? TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              )
                            : TextStyle(
                                fontSize: 18,
                                color: const Color.fromARGB(255, 43, 43, 43),
                                fontWeight: FontWeight.w600),
                      ),
                      Spacer(),
                    ],
                  )
                ],
              ),
            ),

            BirdTitle(
                title: "",
                latin: widget.bird.latin,
                family: widget.bird.family,
                desc: widget.bird.desc,
                count: widget.bird.count,
                source: widget.bird.source,
                author: widget.bird.author,
                authorLink: widget.bird.authorLink,
                author2: widget.bird.author2,
                authorLink2: widget.bird.authorLink2),
          ],
        ),
      ),
    );
  }
}
