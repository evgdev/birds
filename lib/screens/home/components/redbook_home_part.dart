import 'package:flutter/material.dart';
import 'package:flutter_birds/screens/home/components/recomend_bird_card.dart';
import 'package:flutter_birds/screens/redbook_detail.dart';
import '../../redbook_list.dart';

class RedbookHomePartBirds extends StatelessWidget {
  RedbookHomePartBirds({Key? key}) : super(key: key);
  final List birds = BirdList().birds;

  @override
  Widget build(BuildContext context) {
    var randomBirds = (birds.toList()..shuffle());

    return Column(
      children: [
        if (randomBirds.isNotEmpty) ...[
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (var i = 0; i < 5; i++) ...[
                  RecomendBirdCard(
                      image:
                          'assets/images/small/${randomBirds[i].imageUrl}1.jpg',
                      //image: "assets/images/image_1.png",
                      title: (randomBirds[i].name).length < 30
                          ? randomBirds[i].name
                          : (randomBirds[i].name).substring(0, 22) +
                              "\n" +
                              (randomBirds[i].name)
                                  .substring(22, randomBirds[i].name.length),
                      latin: randomBirds[i].latin,
                      family: randomBirds[i].family,
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RedbookDetails(
                                      bird: randomBirds[i],
                                    )));
                      }),
                  Divider(),
                ],
              ],
            ),
          ),
        ],
      ],
    );
  }
}
