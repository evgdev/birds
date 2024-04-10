import 'package:flutter/material.dart';
import '/constants.dart';

class Areas extends StatelessWidget {
  const Areas({
    Key? key,
    required this.areas,
  }) : super(key: key);
  final List<AreaModel> areas;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (var i = 0; i < areas.length; i++) ...[
            AreaCard(
                image: 'assets/images/${areas[i].imageUrl}.jpg',
                //image: "assets/images/image_1.png",
                title: areas[i].name,
                //title: "Синица",
                press: () {}),
            Divider(),
          ],
        ],
      ),
    );
  }
}

class AreaCard extends StatelessWidget {
  const AreaCard({
    Key? key,
    required this.image,
    required this.press,
    required this.title,
  }) : super(key: key);

  final String image, title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          margin: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding / 4,
              top: kDefaultPadding / 2,
              bottom: kDefaultPadding),
          width: size.width * 0.4,
          child: Material(
            elevation: 4,
            color: Colors.grey[200],
            child: Column(children: <Widget>[
              GestureDetector(
                onTap: press,
                child: Padding(
                  padding: const EdgeInsets.only(top: 2.0),
                  child: SizedBox(
                    width: 160,
                    height: 120,
                    child: Image.asset(image,
                        fit: BoxFit
                            .cover), //add image location here, fit: BoxFit.cover),
                  ),
                ),
              ),
              GestureDetector(
                onTap: press,
                child: Container(
                  padding: EdgeInsets.only(left: 8, top: 6),
                  //                padding: EdgeInsets.all(kDefaultPadding),
                  child: Row(children: <Widget>[
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "$title\n",
                            style: TextStyle(
                              fontSize: title.length < 20 ? 14 : 13,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(255, 58, 58, 58),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Spacer(),
                    // Text('\$$price',
                    //     style: TextStyle(
                    //         color: kPrimaryColor, fontWeight: FontWeight.bold)
                    //         )
                  ]),
                ),
              ),
            ]),
          ),
        ),
      ],
    );
  }
}
