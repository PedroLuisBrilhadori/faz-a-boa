import 'package:flutter/material.dart';

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
            return const Center(
              child: Text(
                  'Um erro inesperado aconteceu, tente novamente mais tarde.'),
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
              ],
            ),
          );
        },
      ),
    );
  }
}
