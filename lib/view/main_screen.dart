import 'package:flutter/material.dart';

import 'package:faz_a_boa/view/login_screen.dart';
import 'package:faz_a_boa/widgets/chips/model/chips.model.dart';
import 'package:faz_a_boa/widgets/chips/list_chips.dart';
import 'package:faz_a_boa/widgets/app_bar/app_bar.dart';
import 'package:faz_a_boa/widgets/card/card.dart';
import 'package:faz_a_boa/widgets/card/model/card_data.model.dart';
import 'package:faz_a_boa/widgets/drawer/config_drawer.dart';
import 'package:faz_a_boa/widgets/navigation_bar/navigation_bar.dart';

List<CardData> stations = [
  CardData('Posto Ipiranga', 'R. 1234', 'lib/assets/ipiranga.png', 4.0, 11),
  CardData('Posto Shell', 'R. 2341', 'lib/assets/shell.png', 5, 10),
  CardData('Posto Juninho', 'R. 1111', 'lib/assets/juninho.png', 3, 6),
  CardData('Posto Ipiranga', 'R. 1234', 'lib/assets/ipiranga.png', 1, 5),
  CardData('Posto Ipiranga', 'R. 1234', 'lib/assets/ipiranga.png', 3, 3),
];

List<Widget> appList = [
  CardWidget(stations[0]),
  CardWidget(stations[1]),
  CardWidget(stations[2]),
  CardWidget(stations[3]),
  CardWidget(stations[4]),
  CardWidget(stations[0]),
  CardWidget(stations[0]),
  CardWidget(stations[0]),
  CardWidget(stations[0]),
  CardWidget(stations[0]),
  CardWidget(stations[0]),
  CardWidget(stations[0]),
  CardWidget(stations[0]),
];

List<ChipModel> chipsList = [
  ChipModel(label: 'Ordenar'),
  ChipModel(label: 'Favoritos'),
  ChipModel(label: 'Distância'),
  ChipModel(label: 'Preço'),
  ChipModel(label: 'Combustível'),
  ChipModel(label: 'Bandeira'),
];

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: LoginScreen()),
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
      Expanded(
        flex: 1,
        child: FZBAppBar(
          title: 'Postos',
          child: ChipsListWidget(chipsList: chipsList),
        ),
      ),
      Flexible(flex: 5, child: ListView(children: appList)),
    ]);
  }
}
