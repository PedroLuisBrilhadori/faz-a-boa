import 'package:flutter/material.dart';

import 'package:faz_a_boa/app/widgets/app_bar/app_bar_icon.dart';

class AppbarContent extends StatefulWidget {
  final String title;
  final String? subTitle;
  final void Function() onPressedConfig;

  const AppbarContent({
    Key? key,
    required this.title,
    required this.onPressedConfig,
    this.subTitle,
  }) : super(key: key);

  @override
  State<AppbarContent> createState() => _AppbarContentState();
}

class _AppbarContentState extends State<AppbarContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          homeButton(),
          Column(
            children: [
              Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subTitle()
            ],
          ),
          configButton()
        ],
      ),
    );
  }

  Widget subTitle() {
    if (widget.subTitle is String) {
      return Text(
        widget.subTitle!,
        style: const TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w500,
        ),
      );
    }

    return Container();
  }

  Widget homeButton() {
    return AppBarIconWidget(
      const BorderRadius.only(
        topRight: Radius.circular(12.0),
        bottomRight: Radius.circular(12.0),
      ),
      IconButton(
        icon: const Icon(Icons.person_outline),
        color: Colors.white,
        onPressed: () {},
      ),
    );
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
        onPressed: widget.onPressedConfig,
      ),
    );
  }
}
