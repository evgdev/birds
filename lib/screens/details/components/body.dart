import 'package:flutter/material.dart';
import 'package:flutter_birds/constants.dart';
import 'package:flutter_birds/screens/details/components/title_and_body.dart';
import 'package:flutter_birds/screens/details/details_screen_audio.dart';
import 'package:flutter_birds/screens/details/map_screen.dart';
import '../../../bird_sounds.dart';
import '../details_screen_big.dart';
import 'image_and_icons.dart';

class Body extends StatefulWidget {
  final dynamic bird;
  final int parent;
  Body({super.key, required this.bird, required this.parent});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  // AudioPlayer player = AudioPlayer();

  // bool isPlaying = false;
  // Duration duration = Duration.zero;
  // Duration position = Duration.zero;

  // String formatTime(Duration duration) {
  //   String twoDigits(int n) => n.toString().padLeft(2, '0');
  //   final hours = twoDigits(duration.inHours);
  //   final minutes = twoDigits(duration.inMinutes.remainder(60));
  //   final seconds = twoDigits(duration.inSeconds.remainder(60));
  //   return [
  //     if (duration.inHours > 0) hours,
  //     minutes,
  //     seconds,
  //   ].join(':');
  // }

  @override
  void initState() {
    super.initState();
  }

  // @override
  // void dispose() {
  //   player.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // String soundUrl = widget.bird.imageUrl;
    // int soundIndex = soundUrl != null ? birdSound.indexOf(soundUrl) : 0;
    // var url = "sounds/${birdSound[soundIndex]}.mp3";
    // var prevUrl = soundIndex > 0 ? birdSound[soundIndex - 1] : null;
    // var nextUrl =
    //     soundIndex < birdSound.length ? birdSound[soundIndex + 1] : null;
    int parent = widget.parent;

    // parent =0 - from ListScreen, 1- from ListScreenArrival  2 - from TaxonomyScreen, 3 - from MonthScreen, 4 - from Redbook, 5 - from AreaScreen

    if (parent == 5 || parent == 6 || parent == 7) {
      switch (parent) {
        case 5:
          break;
        case 6:
          break;
        case 7:
          break;
      }

//        print(birdIndex);
//       prevUrl = birdIndex > 0 ? birds2[birdIndex - 1] : null;
//       nextUrl = birdIndex < (birds2.length - 1) ? birds2[birdIndex + 1] : null;
//       prevBird =
//           prevUrl != null ? birds2.firstWhere((bird) => bird == prevUrl) : null;
//       nextBird =
//           nextUrl != null ? birds2.firstWhere((bird) => bird == nextUrl) : null;
//     } else if (parent == 0 || parent == 3) {
//       if (parent == 3) {
//         var birds2 = birds
//             .where((bird) => bird.month.contains(int.parse(cdate)))
//             .toList();

//         birdIndex = birds2.indexOf(widget.bird);
// //        print(birdIndex);
//         prevUrl = birdIndex > 0 ? birds2[birdIndex - 1] : null;
//         nextUrl =
//             birdIndex < (birds2.length - 1) ? birds2[birdIndex + 1] : null;
//         prevBird = prevUrl != null
//             ? birds2.firstWhere((bird) => bird == prevUrl)
//             : null;

//         nextBird = nextUrl != null
//             ? birds2.firstWhere((bird) => bird == nextUrl)
//             : null;
//       } else {
//         birdIndex = birds.indexOf(widget.bird);
//         //      print(birdIndex);
//         prevUrl = birdIndex > 0 ? birds[birdIndex - 1] : null;
//         nextUrl = birdIndex <= birds.length ? birds[birdIndex + 1] : null;
//         prevBird = prevUrl != null
//             ? birds.firstWhere((bird) => bird == prevUrl)
//             : null;
//         nextBird = nextUrl != null
//             ? birds.firstWhere((bird) => bird == nextUrl)
//             : null;
//       }

      //prevUrl = birdIndex > 0 ? birds[birdIndex - 1] : null;
      //nextUrl = birdIndex < birds.length ? birds[birdIndex + 1] : null;
    }

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ImageAndIcons(
              size: size,
              bird: widget.bird,
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailsScreenBig(
                              bird: widget.bird,
                              pic: '1',
                            )));
              },
              press2: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailsScreenBig(
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
            if (birdSound.contains(widget.bird.imageUrl)) ...[
              Card(
                child: Column(
                  children: [
                    // Slider(
                    //     min: 0,
                    //     max: duration.inSeconds.toDouble(),
                    //     value: position.inSeconds.toDouble(),
                    //     onChanged: (value) async {
                    //       final position = Duration(seconds: value.toInt());
                    //       await player.seek(position);
                    //     }),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(horizontal: 16),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     children: [
                    //       Text(formatTime(position)),
                    //       Text(formatTime(duration - position)),
                    //     ],
                    //   ),
                    // ),
                    Row(
                      children: [
                        // if (parent != 4) ...[
                        //   prevBird != null
                        //       ? IconButton.outlined(
                        //           onPressed: () {
                        //             Navigator.push(
                        //               context,
                        //               MaterialPageRoute(
                        //                 builder: (context) => DetailsScreen(
                        //                   bird: prevBird!,
                        //                   parent: parent,
                        //                 ),
                        //               ),
                        //             );
                        //           },
                        //           icon: const Icon(Icons.arrow_left_outlined))
                        //       : Spacer(),
                        // ],
                        Spacer(),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  kBackColor, // set the background color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailsScreenAudio(
                                            //bird: birds[soundIndex],
                                            bird: widget.bird,
                                          )));
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Text(
                                locale == 'ru' ? "Голос" : "Sound",
                                style: TextStyle(
                                    fontSize: 22, color: Colors.white),
                              ),
                            )),
                        Spacer(),
                        // nextBird != null
                        //     ? IconButton.outlined(
                        //         onPressed: () {
                        //           Navigator.push(
                        //             context,
                        //             MaterialPageRoute(
                        //               builder: (context) => DetailsScreen(
                        //                 bird: nextBird!,
                        //                 parent: parent,
                        //               ),
                        //             ),
                        //           );
                        //         },
                        //         icon: const Icon(Icons.arrow_right_outlined))
                        //     : Spacer(),
                        // IconButton.outlined(
                        //     onPressed: () {},
                        //     icon: const Icon(Icons.skip_next)),
                      ],
                    )
                  ],
                ),
              ),
            ] else ...[
//              Text(widget.bird.imageUrl)
            ],
            BirdTitle(
                title: widget.bird.name,
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
