import 'package:flutter/material.dart';

import '../../../constants.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    Key? key,
    required this.icon,
  }) : super(key: key);
  final String icon;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      padding: EdgeInsets.all(kDefaultPadding / 3),
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: kBackgroundColor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                blurRadius: 12,
                color: kPrimaryColor.withOpacity(0.22)),
            BoxShadow(
                offset: Offset(-10, -10), blurRadius: 12, color: Colors.white),
          ]),
      child: Image.asset(icon),
    );
  }
}
