import 'package:flutter/material.dart';

import 'package:faz_a_boa/app/widgets/card/card_info.dart';
import 'package:faz_a_boa/app/widgets/card/model/card_data.model.dart';
import 'package:faz_a_boa/app/widgets/card/photo_rate.dart';

class CardWidget extends StatelessWidget {
  final CardData cardData;

  const CardWidget(this.cardData, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      margin: const EdgeInsets.all(10),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.white70, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PhotoRateWidget(cardData.rate, cardData.image),
            CardInfo(cardData.title, cardData.address, cardData.distance),
          ],
        ),
      ),
    );
  }
}
