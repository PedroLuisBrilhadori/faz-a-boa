import 'package:flutter/material.dart';

class PhotoRateWidget extends StatelessWidget {
  final double rate;
  final String image;

  const PhotoRateWidget(this.rate, this.image, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.fromLTRB(10, 10, 10, 6),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 65,
                child: Image.asset(image),
              ),
              StarsRate(rate),
            ]));
  }
}

class StarsRate extends StatelessWidget {
  final double iconSize = 15;

  final double rate;
  const StarsRate(this.rate, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: stars(),
    );
  }

  List<Widget> stars() {
    List<Widget> icons = [];

    for (double i = rate; i > 0; i--) {
      if (i >= 1) {
        icons.add(Icon(
          Icons.star_rate,
          size: iconSize,
        ));
      }

      if (i >= 0.5 && i < 1) {
        icons.add(Icon(
          Icons.star_half,
          size: iconSize,
        ));
      }
    }

    if (icons.length < 5) {
      for (int i = icons.length; i < 5; i++) {
        icons.add(Icon(
          Icons.star_rate_outlined,
          size: iconSize,
        ));
      }
    }

    return icons;
  }
}
