import 'package:flutter/material.dart';
import 'package:flutter_birds/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: kDefaultPadding),
        // cover 20% of total height
        height: size.height * 0.2,
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                left: kDefaultPadding,
                right: kDefaultPadding,
                bottom: 36 + kDefaultPadding,
              ),
              height: size.height * 0.2 - 27,
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(36),
                      bottomRight: Radius.circular(36))),
              child: Row(
                children: <Widget>[
                  Text(
                    'Птицы Томской области',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Image.asset('assets/images/logo.jpg'),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 54,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 50,
                            color: kPrimaryColor.withOpacity(0.23))
                      ]),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          style: TextStyle(color: kTextColor),
                          decoration: InputDecoration(
                            hintText: "Поиск",
                            hintStyle: TextStyle(
                                color: kPrimaryColor.withOpacity(0.5)),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            //                            suffixIcon:                                SvgPicture.asset("assets/icons/search.svg")
                          ),
                          onSubmitted: (value) {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => SearchScreen(
                            //             searchValue: value,
                            //           )),
                            // );
                          },
                        ),
                      ),
                      SvgPicture.asset("assets/icons/search.svg"),
                    ],
                  )),
            ),
          ],
        ));
  }
}
