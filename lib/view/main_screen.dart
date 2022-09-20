// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:faz_a_boa/widgets/app_bar/app_bar.dart';
import 'package:faz_a_boa/widgets/card/card.dart';
import 'package:faz_a_boa/widgets/card/model/card_data.dart';
import 'package:faz_a_boa/widgets/drawer/config_drawer.dart';
import 'package:faz_a_boa/widgets/navigation_bar/navigation_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

List<CardData> stations = [
  CardData('Posto Ipiranga', 'R. 1234', 'lib/assets/ipiranga.png', 4.5, 11)
];

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: AppColumn()),
      bottomNavigationBar: FZBNavigationBar(),
      endDrawer: ConfigDrawer(),
    );
  }
}

class AppColumn extends StatelessWidget {
  const AppColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      FZBAppBar('Postos'),
      Expanded(
          child: ListView(
        children: [
          CardWidget(stations[0]),
          CardWidget(stations[0]),
          CardWidget(stations[0]),
          CardWidget(stations[0]),
          CardWidget(stations[0]),
          CardWidget(stations[0]),
          CardWidget(stations[0]),
          CardWidget(stations[0]),
          CardWidget(stations[0]),
          CardWidget(stations[0]),
          CardWidget(stations[0]),
          CardWidget(stations[0]),
          CardWidget(stations[0]),
        ],
      )),
    ]);
  }
}
