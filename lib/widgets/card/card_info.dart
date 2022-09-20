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
        margin: const EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(title), Text(address)],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Text("${distance}km")],
            )
          ],
        ),
      ),
    );
  }
}
