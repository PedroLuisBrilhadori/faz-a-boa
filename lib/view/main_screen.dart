// ignore_for_file: prefer_const_constructors

import 'package:faz_a_boa/widgets/card/card.dart';
import 'package:faz_a_boa/widgets/navigation_bar/navigation_bar.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: CardWidget()),
      bottomNavigationBar: FZBNavigationBar(),
    );
  }
}
