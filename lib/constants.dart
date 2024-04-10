import 'package:flutter/material.dart';

const kPrimaryColor = Color.fromARGB(255, 3, 43, 8);
const kTextColor = Color.fromARGB(255, 1, 55, 33);
const kBackgroundColor = Color.fromARGB(255, 235, 233, 233);
const kBackColor = Color.fromARGB(255, 12, 58, 11);
const locale = "ru";
//const locale = "en";
const double kDefaultPadding = 20.0;

class BirdDataModel {
  final String name,
      latin,
      family,
      imageUrl,
      desc,
      icon,
      source,
      author,
      authorLink,
      author2,
      authorLink2,
      audioDesc;
  final int count, arrival;
  final List<int> month, area;

  const BirdDataModel(
      {required this.name,
      required this.latin,
      required this.family,
      required this.imageUrl,
      required this.desc,
      required this.month,
      required this.area,
      required this.arrival,
      required this.icon,
      required this.count,
      required this.source,
      required this.author,
      required this.authorLink,
      required this.author2,
      required this.authorLink2,
      this.audioDesc = ""});

  get title => null;
}

class AreaModel {
  final int areaId;
  final String name, imageUrl, desc;
  final Widget screen;

  const AreaModel(
      {required this.areaId,
      required this.name,
      required this.imageUrl,
      required this.desc,
      required this.screen});
}
