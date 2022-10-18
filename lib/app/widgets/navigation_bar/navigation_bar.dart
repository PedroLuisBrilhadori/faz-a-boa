import 'package:flutter/material.dart';

enum NavigationIndex {
  search,
  home,
  map,
}

class FZBNavigationBar extends StatefulWidget {
  final NavigationIndex navigationIndex;

  const FZBNavigationBar(
      {Key? key, this.navigationIndex = NavigationIndex.home})
      : super(key: key);

  @override
  State<FZBNavigationBar> createState() => _FZBNavigationBarState();
}

class _FZBNavigationBarState extends State<FZBNavigationBar> {
  int _selectedIndex = 1;

  @override
  void initState() {
    _selectedIndex = widget.navigationIndex.index;

    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
              backgroundColor: const Color.fromRGBO(25, 118, 210, 1),
              fixedColor: Colors.white,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: "Procurar"),
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
              ],
              currentIndex: _selectedIndex,
              onTap: _onItemTapped),
        ));
  }
}
