import 'package:flutter/material.dart';
import 'package:flutter_birds/constants.dart';
// ignore: depend_on_referenced_packages

import '../../list_areas.dart';
import 'body.dart';

class AreasWithMoreBtn extends StatelessWidget {
  const AreasWithMoreBtn({
    Key? key,
    required this.title,
    required this.areas,
    required this.areaTitle,
  }) : super(key: key);
  final String title, areaTitle;

  final List<AreaModel> areas;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomUnderline(
            text: title,
            cdate: cdate,
          ),
          Spacer(),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AreasScreen()));
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(kPrimaryColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(
                    color: kPrimaryColor,
                  ),
                ),
              ),
            ),
            child: Text(
              "больше",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline(
      {Key? key, required this.text, required this.cdate})
      : super(key: key);

  final String text;
  final String cdate;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(text,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
          ),
        ],
      ),
    );
  }
}
