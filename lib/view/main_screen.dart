// ignore_for_file: prefer_const_constructors

import 'package:faz_a_boa/widgets/app_bar/app_bar.dart';
import 'package:faz_a_boa/widgets/card/card.dart';
import 'package:faz_a_boa/widgets/navigation_bar/navigation_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/drawer/config_drawer.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        FZBAppBar('Postos'),
        Expanded(
            child: ListView(
          children: const [
            CardWidget(),
            CardWidget(),
            CardWidget(),
            CardWidget(),
            CardWidget(),
          ],
        )),
      ]),
      bottomNavigationBar: FZBNavigationBar(),
      endDrawer: ConfigDrawer(),
    );
  }
}
