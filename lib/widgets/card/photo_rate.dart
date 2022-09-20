import 'package:flutter/material.dart';

class PhotoRateWidget extends StatelessWidget {
  final double rate;
  final String image;

  final double iconSize = 15;
  const PhotoRateWidget(this.rate, this.image, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.fromLTRB(5, 5, 10, 5),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 65,
                child: Image.asset(image),
              ),
              Row(
                children: [
                  Icon(Icons.star, size: iconSize),
                  Icon(Icons.star, size: iconSize),
                  Icon(Icons.star, size: iconSize),
                  Icon(Icons.star, size: iconSize),
                  Icon(Icons.star_rate_outlined, size: iconSize)
                ],
              )
            ]));
  }
}
