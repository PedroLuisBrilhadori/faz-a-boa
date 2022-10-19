import 'package:flutter/material.dart';

import 'package:faz_a_boa/app/widgets/card/card_info.dart';
import 'package:faz_a_boa/app/widgets/card/photo_rate.dart';

class CardWidget extends StatelessWidget {
  final String id;
  final String title;
  final String address;
  final String image;
  final double rate;
  final double distance;
  final void Function() onTap;

  const CardWidget(
      {Key? key,
      required this.id,
      required this.title,
      required this.address,
      required this.distance,
      required this.image,
      required this.rate,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
              PhotoRateWidget(rate, image),
              CardInfo(title, address, distance),
            ],
          ),
        ),
      ),
    );
  }
}
