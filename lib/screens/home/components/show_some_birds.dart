import 'package:flutter/material.dart';
import 'package:flutter_birds/screens/home/components/some_birds.dart';
import '../../../list_some_birds.dart';

Widget showSomeBirds(String birdType) {
//  var month = int.parse(date);
  print(birdType);
  final birds2 = birds.where((i) => i.family == birdType).toList();
  //List<BirdDataModel> birds2 =      birds.where((bird) => bird.icon == birdType.toString()).toList();
  print(birds2);
  if (birds2.isNotEmpty) {
    return SomeBirds(birds: birds2);
  } else {
    return Text("no birds that month");
  }
}
