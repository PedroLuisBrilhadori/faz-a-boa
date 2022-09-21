import 'package:flutter/material.dart';

import 'package:faz_a_boa/widgets/app_bar/app_bar_icon.dart';

class AppbarContent extends StatefulWidget {
  final String title;
  const AppbarContent(this.title, {Key? key}) : super(key: key);

  @override
  State<AppbarContent> createState() => _AppbarContentState();
}

class _AppbarContentState extends State<AppbarContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          homeButton(),
          Text(
            widget.title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          configButton()
        ],
      ),
    );
  }

  Widget homeButton() {
    return AppBarIconWidget(
        const BorderRadius.only(
          topRight: Radius.circular(12.0),
          bottomRight: Radius.circular(12.0),
        ),
        IconButton(
          icon: const Icon(Icons.search_outlined),
          color: Colors.white,
          onPressed: () {},
        ));
  }

  Widget configButton() {
    return AppBarIconWidget(
      const BorderRadius.only(
        topLeft: Radius.circular(12.0),
        bottomLeft: Radius.circular(12.0),
      ),
      IconButton(
        icon: const Icon(Icons.settings_outlined),
        color: Colors.white,
        onPressed: () {},
      ),
    );
  }
}
