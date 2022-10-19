import 'package:flutter/material.dart';

import 'package:faz_a_boa/app/models/station.model.dart';
import 'package:faz_a_boa/app/services/stations.service.dart';
import 'package:faz_a_boa/app/widgets/scaffold_base/scaffold_base.dart';
import 'package:faz_a_boa/app/widgets/app_bar/app_bar.dart';
import 'package:faz_a_boa/app/widgets/card/card.dart';
import 'package:faz_a_boa/app/widgets/chips/model/chips.model.dart';
import 'package:flutter_modular/flutter_modular.dart';

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
    return ScaffoldBase(
      navigationBar: true,
      configDrawer: true,
      child: Column(
        children: [
          const Flexible(
            flex: 1,
            child: FZBAppBar(
              title: 'Postos',
            ),
          ),
          Flexible(
            flex: 5,
            child: FutureBuilder<List<Station>>(
              future: StationService().getItems(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return const Center(
                    child: Text('Não foi possível exibir os dados'),
                  );
                }

                if (!snapshot.hasData) {
                  return const Center(child: CircularProgressIndicator());
                }

                final stations = snapshot.data;

                return ListView.builder(
                  itemCount: stations!.length,
                  itemBuilder: (context, index) {
                    final id = stations[index].id;
                    return CardWidget(
                      id: id,
                      title: stations[index].name,
                      address: stations[index].address,
                      distance: stations[index].distance,
                      image: stations[index].image,
                      rate: stations[index].rate,
                      onTap: () => Modular.to.navigate('/station/$id'),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
