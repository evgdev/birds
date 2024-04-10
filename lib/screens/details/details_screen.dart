import 'package:flutter/material.dart';
import 'package:flutter_birds/gnav_bar.dart';
import 'package:flutter_birds/screens/details/components/body.dart';
import '../../constants.dart';

class DetailsScreen extends StatefulWidget {
  final BirdDataModel bird;
  final int parent;
  DetailsScreen({Key? key, required this.bird, required this.parent})
      : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.bird.name, style: TextStyle(fontSize: 18)),
          titleTextStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          backgroundColor: Color.fromARGB(255, 12, 58, 11),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        body: Body(
          bird: widget.bird,
          parent: widget.parent,
        ),
        bottomNavigationBar: GNavBar(page: 2),
      ),
    );
  }
}
