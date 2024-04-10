import 'package:flutter/material.dart';
import 'home/components/bottom_nav_bar.dart';

class SettingsScreen extends StatefulWidget {
  SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
  final bool isSelected = false;
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Голоса птиц')),
      body: Column(children: [
        Text("Настройки"),
      ]),
      bottomNavigationBar: BottomNavBar(1),
    );
  }
}
