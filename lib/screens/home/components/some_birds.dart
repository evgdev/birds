import 'package:flutter/material.dart';
import 'package:flutter_birds/screens/details/details_screen.dart';
import 'package:flutter_birds/screens/home/components/recomend_bird_card.dart';
import '/constants.dart';

class SomeBirds extends StatelessWidget {
  const SomeBirds({Key? key, required this.birds}) : super(key: key);
  final List<BirdDataModel> birds;

  @override
  Widget build(BuildContext context) {
    var randomBirds = (birds.toList()..shuffle());
    String birdFamily = birds[0].family;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Text(birdFamily,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : Colors.grey.shade800)),
        ),
        if (randomBirds.isNotEmpty) ...[
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (var i = 0; i < randomBirds.length; i++) ...[
                  RecomendBirdCard(
                      image:
                          'assets/images/small/${randomBirds[i].imageUrl}1.jpg',
                      //image: "assets/images/image_1.png",
                      title: randomBirds[i].name,
                      latin: randomBirds[i].latin,
                      family: randomBirds[i].family,
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailsScreen(
                                      bird: randomBirds[i],
                                      parent: 7,
                                    )));
                      }),
                ],
              ],
            ),
          ),
        ],
      ],
    );
  }
}
