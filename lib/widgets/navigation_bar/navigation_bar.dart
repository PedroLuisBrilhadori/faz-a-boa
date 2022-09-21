// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FZBNavigationBar extends StatefulWidget {
  const FZBNavigationBar({Key? key}) : super(key: key);

  @override
  State<FZBNavigationBar> createState() => _FZBNavigationBarState();
}

class _FZBNavigationBarState extends State<FZBNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: const [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
              backgroundColor: Color.fromRGBO(25, 118, 210, 1),
              fixedColor: Colors.white,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home_outlined,
                    ),
                    label: "Início"),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.map_outlined,
                    ),
                    label: "Mapa"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: "Usuário")
              ],
              currentIndex: _selectedIndex,
              onTap: _onItemTapped),
        ));
  }
}
