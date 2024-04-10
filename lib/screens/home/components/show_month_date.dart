import 'package:flutter/material.dart';
import 'package:flutter_birds/screens/home/components/recomended_birds.dart';
import '../../../constants.dart';
import '../../../list_birds.dart';

Widget showMonthBirds(date) {
  var month = int.parse(date);

  List<BirdDataModel> birds2 =
      birds.where((bird) => bird.month.contains(month)).toList();

  if (birds2 != []) {
    return RecomendBirds(birds: birds2);
  } else {
    return Text("no birds that month");
  }
}
