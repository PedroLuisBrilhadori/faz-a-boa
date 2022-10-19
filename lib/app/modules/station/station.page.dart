import 'package:flutter/material.dart';

import 'package:faz_a_boa/app/widgets/button/button.dart';
import 'package:faz_a_boa/app/widgets/prices/prices.dart';
import 'package:faz_a_boa/app/models/station.model.dart';
import 'package:faz_a_boa/app/services/stations.service.dart';
import 'package:faz_a_boa/app/widgets/app_content/app_content.dart';
import 'package:faz_a_boa/app/widgets/profile/profile.dart';
import 'package:faz_a_boa/app/widgets/scaffold_base/scaffold_base.dart';

class StationScreen extends StatelessWidget {
  final String id;

  const StationScreen({super.key, this.id = '1'});

  @override
  Widget build(BuildContext context) {
    return ScaffoldBase(
      navigationBar: true,
      configDrawer: true,
      child: FutureBuilder<Station>(
        future: StationService().getItem(id),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                    'Um erro inesperado aconteceu, tente novamente mais tarde.'),
                Text(snapshot.error.toString()),
              ],
            );
          }
          if (!snapshot.hasData) {
            return const Center(child: Text('Posto não encontrado'));
          }

          final station = snapshot.data;

          return AppContent(
            title: station!.name,
            subTitle: station.address,
            content: ListView(
              children: [
                ProfilePhotos(
                  image: station.image,
                  cover: station.cover,
                ),
                StationsPrices(
                  fuels: station.fuels,
                ),
                actionButtons(),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget actionButtons() {
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 40),
      child: Container(
        margin: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 150,
              height: 40,
              child: ButtonApp(
                label: 'Avaliar',
                color: Colors.green.shade700,
                textColor: Colors.white,
                fontSize: 16,
                onPressed: () {},
              ),
            ),
            SizedBox(
              width: 150,
              height: 40,
              child: ButtonApp(
                label: 'Enviar Nota Fiscal',
                color: Colors.blue.shade700,
                textColor: Colors.white,
                fontSize: 16,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
