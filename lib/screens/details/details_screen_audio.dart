import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_birds/constants.dart';
import 'package:flutter_birds/screens/details/map_screen.dart';
import '../../../bird_sounds.dart';
import 'components/image_and_icons.dart';
import 'details_screen_big.dart';

class DetailsScreenAudio extends StatefulWidget {
  final BirdDataModel bird;
  const DetailsScreenAudio({Key? key, required this.bird}) : super(key: key);

  @override
  State<DetailsScreenAudio> createState() => _DetailsScreenAudioState();
}

class _DetailsScreenAudioState extends State<DetailsScreenAudio> {
  @override
  Widget build(BuildContext context) {
//    print("pic${widget.}");
    return Scaffold(
      appBar: AppBar(title: Text(widget.bird.name)),
      body: Body(
        bird: widget.bird,
        pic: "",
      ),
    );
  }
}

class Body extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final bird;
  final String pic;
  Body({super.key, required this.bird, required this.pic});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  AudioPlayer player = AudioPlayer();
  @override
  void initState() {
    super.initState();

    String soundUrl = widget.bird.imageUrl;
    int soundIndex = birdSound.indexOf(soundUrl);
    var url = "sounds/${birdSound[soundIndex]}.mp3";
    player.setSource(AssetSource(url));
    player.setReleaseMode(ReleaseMode.loop);
    PlayerState.playing;
    player.play(AssetSource(url));
    // player.setVolume(1);

    player.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });

    player.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    player.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  bool isPlaying = false;

  Duration duration = Duration.zero;

  Duration position = Duration.zero;

  String formatTime(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return [
      if (duration.inHours > 0) hours,
      minutes,
      seconds,
    ].join(':');
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    BirdDataModel bird = widget.bird;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ImageAndIcons(
              size: size,
              bird: widget.bird,
              pressMap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MapScreen(bird: widget.bird)));
              },
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
            ),
            if (birdSound.contains(widget.bird.imageUrl)) ...[
              Card(
                child: Column(
                  children: [
                    Slider(
                        min: 0,
                        max: duration.inSeconds.toDouble(),
                        value: position.inSeconds.toDouble(),
                        onChanged: (value) async {
                          final position = Duration(seconds: value.toInt());
                          await player.seek(position);
                        }),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(formatTime(position)),
                          Text(formatTime(duration - position)),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  kBackColor, // set the background color
                            ),
                            onPressed: () async {
                              if (isPlaying) {
                                await player.pause();
                              } else {
                                //var url = "sounds/${widget.bird.imageUrl}.mp3";
                                await player.resume();
                                //                    await player.play(AssetSource(url));
                                isPlaying = true;
                              }
                            },
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Colors.white,
                                  child: IconButton(
                                      icon: Icon(isPlaying
                                          ? Icons.pause
                                          : Icons.play_arrow),
                                      iconSize: 15,
                                      onPressed: () async {
                                        if (isPlaying) {
                                          await player.pause();
                                        } else {
                                          //var url = "sounds/${widget.bird.imageUrl}.mp3";
                                          await player.resume();
                                          //                    await player.play(AssetSource(url));
                                          isPlaying = true;
                                        }
                                      }
                                      //  async {
                                      //   if (isPlaying) {
                                      //     await player.pause();
                                      //   } else {
                                      //     var url =
                                      //         "sounds/${widget.bird.imageUrl}.mp3";
                                      //     await player
                                      //         .setSource(AssetSource(url))
                                      //         .then((value) {
                                      //       player.play(AssetSource(url));
                                      //     });

                                      //     //                    await player.play(AssetSource(url));
                                      //     isPlaying = true;
                                      //   }
                                      // },
                                      ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 18.0),
                                  child: Text(
                                    isPlaying ? "Stop" : "Play",
                                    style: TextStyle(
                                        fontSize: 22, color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                    if (bird.audioDesc != "")
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            text: bird.audioDesc,
                            style: Theme.of(context).brightness ==
                                    Brightness.dark
                                ? TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  )
                                : TextStyle(
                                    fontSize: 16,
                                    color:
                                        const Color.fromARGB(255, 43, 43, 43),
                                    fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
