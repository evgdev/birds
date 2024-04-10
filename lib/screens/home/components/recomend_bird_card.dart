import 'package:flutter/material.dart';

import '../../../constants.dart';

class RecomendBirdCard extends StatelessWidget {
  const RecomendBirdCard({
    Key? key,
    required this.image,
    required this.title,
    required this.latin,
    required this.family,
    required this.press,
  }) : super(key: key);

  final String image, title, latin, family;
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
              bottom: kDefaultPadding / 2),
          width: size.width * 0.41,
          child: Material(
            elevation: 2,
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
                //                     Text("${bird.name}\n${bird.latin}"),

                //              child: Image.asset(image),
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
                            text: title.length > 18
                                ? "${title.substring(0, 17)}..\n"
                                : "$title\n",
                            style: TextStyle(
                              fontSize: title.length < 20 ? 14 : 13,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(255, 58, 58, 58),
                            ),
                          ),
                          TextSpan(
                              text: latin.length > 18
                                  ? "${latin.substring(0, 17)}..\n"
                                  : "$latin\n",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(255, 129, 129, 129))),
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
