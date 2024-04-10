import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import '../redbook_list.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key? key,
    required this.size,
    required this.bird,
    required this.press,
    required this.press2,
    required this.pressMap,
  }) : super(key: key);

  final Size size;
  final BirdRedbookDataModel bird;
  final VoidCallback press;
  final VoidCallback press2;
  final VoidCallback pressMap;

  @override
  Widget build(BuildContext context) {
    // final player = AudioPlayer();
    // var url = 'assets/sounds/' + bird.imageUrl + '.mp3';
    // player.play(AssetSource(url));

    return Column(
      children: <Widget>[
        Card(
          child: Column(
            children: [
//              Text("count: " + bird.count.toString()),
              if (bird.count == 1) ...[
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 252, 252, 251)),
                  child: GestureDetector(
                    onTap: press,
                    child: Image.asset(
                      "assets/images/small/${bird.imageUrl}1.jpg",
                    ),
                  ),
                )
              ] else
                FlutterCarousel(
                  options: CarouselOptions(
                    height: 300.0,
                    viewportFraction: 1,
                    showIndicator: true,
                    slideIndicator: CircularSlideIndicator(),
                  ),
                  items: [1, bird.count].map((i) {
                    var fun = press;
                    if (i == 1) {
                      fun = press;
                    } else {
                      fun = press2;
                    }
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 1.0),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 245, 244, 240)),
                          child: GestureDetector(
                            onTap: fun,
                            child: Image.asset(
                              "assets/images/big/${bird.imageUrl}$i.jpg",
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              // Padding(
              //   padding: EdgeInsets.all(4),
              //   child: Card(
              //     child: GestureDetector(
              //       onTap: pressMap,
              //       child: Image.asset(
              //         "assets/images/map_icon.png",
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ],
    );
  }
}
