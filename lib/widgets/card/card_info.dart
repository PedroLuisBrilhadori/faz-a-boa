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
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto'),
                ),
                Text(
                  address,
                  style: const TextStyle(
                      fontSize: 12,
                      color: Colors.black87,
                      fontFamily: 'Roboto'),
                )
              ],
            ),
            Column(
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
            )
          ],
        ),
      ),
    );
  }

  Color colorDistance(double distance) {
    if (distance >= 10) return Colors.red;
    if (distance >= 5) return Colors.yellow;
    return Colors.green;
  }
}