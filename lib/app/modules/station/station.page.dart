import 'package:flutter/material.dart';

import 'package:faz_a_boa/app/widgets/alert/alert.dart';
import 'package:faz_a_boa/app/widgets/button/button.dart';
import 'package:faz_a_boa/app/widgets/prices/prices.dart';
import 'package:faz_a_boa/app/models/station.model.dart';
import 'package:faz_a_boa/app/services/stations.service.dart';
import 'package:faz_a_boa/app/widgets/app_content/app_content.dart';
import 'package:faz_a_boa/app/widgets/profile/profile.dart';
import 'package:faz_a_boa/app/widgets/scaffold_base/scaffold_base.dart';

class StationScreen extends StatefulWidget {
  final String id;

  const StationScreen({
    super.key,
    required this.id,
  });

  @override
  State<StationScreen> createState() => _StationScreenState();
}

class _StationScreenState extends State<StationScreen> {
  bool fiscalSent = false;

  @override
  Widget build(BuildContext context) {
    return ScaffoldBase(
      navigationBar: true,
      configDrawer: true,
      child: FutureBuilder<Station>(
        future: StationService().getItem(widget.id),
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
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return ratingDialog();
                    },
                  );
                },
              ),
            ),
            secondButton(),
          ],
        ),
      ),
    );
  }

  secondButton() {
    if (!fiscalSent) {
      return SizedBox(
        width: 150,
        height: 40,
        child: ButtonApp(
          label: 'Enviar Nota Fiscal',
          color: Colors.blue.shade700,
          textColor: Colors.white,
          fontSize: 16,
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return fiscalDialog();
              },
            ).then((value) {
              if (value == 'ok') {
                setState(() {
                  fiscalSent = true;
                });
              }
            });
          },
        ),
      );
    }

    return SizedBox(
      width: 150,
      height: 40,
      child: ButtonApp(
        label: 'Compartilhar',
        color: Colors.blue.shade700,
        textColor: Colors.white,
        fontSize: 16,
        onPressed: () {},
      ),
    );
  }

  Widget fiscalDialog() {
    return AlertApp(
      title: 'Enviar Nota Fiscal',
      message:
          'Você pode enviar uma foto da sua nota Fiscal. Isso nos ajudar a sempre manter os preços atuallizados.',
      content: Container(
        margin: const EdgeInsets.only(top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.file_upload_outlined),
            Text('Escolher foto'),
          ],
        ),
      ),
      actions: [
        ButtonApp(
          fontSize: 16,
          label: 'Ok',
          color: Colors.green.shade700,
          textColor: Colors.white,
          onPressed: () => Navigator.pop(context, 'ok'),
        ),
        ButtonApp(
          fontSize: 16,
          label: 'Voltar',
          color: Colors.red.shade700,
          textColor: Colors.white,
          onPressed: () => Navigator.pop(context, 'voltar'),
        ),
      ],
    );
  }

  Widget ratingDialog() {
    return AlertApp(
      title: 'Avaliar',
      content: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.star_outline_rounded),
          Icon(Icons.star_outline_rounded),
          Icon(Icons.star_outline_rounded),
          Icon(Icons.star_outline_rounded),
          Icon(Icons.star_outline_rounded),
        ],
      ),
      actions: [
        ButtonApp(
          fontSize: 16,
          label: 'Ok',
          color: Colors.green.shade700,
          textColor: Colors.white,
          onPressed: () => Navigator.pop(context, 'ok'),
        ),
        ButtonApp(
          fontSize: 16,
          label: 'Voltar',
          color: Colors.red.shade700,
          textColor: Colors.white,
          onPressed: () => Navigator.pop(context, 'voltar'),
        ),
      ],
    );
  }
}
