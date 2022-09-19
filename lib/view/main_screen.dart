// ignore_for_file: prefer_const_constructors

import 'package:faz_a_boa/widgets/app_bar/app_bar.dart';
import 'package:faz_a_boa/widgets/navigation_bar/navigation_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/drawer/appbar_drawer.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: AppBarDrawer(),
      bottomNavigationBar: FZBNavigationBar(),
    );
  }
}
