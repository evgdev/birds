import 'package:flutter/material.dart';
import '../../constants.dart';

class MapScreen extends StatelessWidget {
  final BirdDataModel bird;

  const MapScreen({Key? key, required this.bird}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(bird.name)),
      body: Body(bird: bird),
    );
  }
}

class Body extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final bird;
  const Body({super.key, required this.bird});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Column(
        children: <Widget>[
          InteractiveViewer(
            panEnabled: true,
            scaleEnabled: true,
            clipBehavior: Clip.hardEdge,
//            boundaryMargin: EdgeInsets.all(100),
            minScale: 1,
            maxScale: 2,
            child: Image.asset(
              "assets/images/maps/${bird.imageUrl}.png",
              width: size.width,
              height: size.height * 0.5,
              fit: BoxFit.fitWidth,
            ),
          ),
          // Image.asset(
          //   "assets/images/map_annotations.png",
          // ),
          // Padding(
          //   padding: const EdgeInsets.only(top: 10),
          //   child: Text(
          //     'Карта ареала',
          //     style: TextStyle(
          //       fontSize: 18,
          //       fontWeight: FontWeight.w400,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
