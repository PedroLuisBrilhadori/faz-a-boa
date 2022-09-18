// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:faz_a_boa/components/navigation_bar.dart';
import 'package:faz_a_boa/components/app_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
      backgroundColor: Colors.white, //acho q vai ter que fzr uma appbar ao invés de widget dela
      body: FZBAppBar(),
      bottomNavigationBar: FZBNavigationBar(),
    );
  }
}