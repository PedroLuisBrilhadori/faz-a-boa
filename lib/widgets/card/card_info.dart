import 'package:flutter/material.dart';

class CardInfo extends StatelessWidget {
  final String title;
  final String address;
  final double distance;

  const CardInfo(this.title, this.address, this.distance, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.fromLTRB(5, 10, 10, 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [cardTitle(title), cardDistance(distance)],
        ),
      ),
    );
  }

  Widget cardTitle(String title) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, fontFamily: 'Roboto'),
        ),
        Text(
          address,
          style: const TextStyle(
              fontSize: 12, color: Colors.black87, fontFamily: 'Roboto'),
        )
      ],
    );
  }

  Widget cardDistance(double distance) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          "${distance}km",
          style: TextStyle(
            fontSize: 22,
            color: colorDistance(distance),
          ),
        )
      ],
    );
  }

  Color colorDistance(double distance) {
    if (distance >= 10) return Colors.red.shade700;
    if (distance >= 5) return Colors.yellow.shade700;
    return Colors.green.shade700;
  }
}
