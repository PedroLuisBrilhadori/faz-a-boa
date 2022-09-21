import 'package:flutter/material.dart';

import 'package:faz_a_boa/widgets/app_bar/app_bar_content.dart';

class FZBAppBar extends StatefulWidget {
  final String title;
  final Widget? child;

  const FZBAppBar({Key? key, required this.title, this.child})
      : super(key: key);

  @override
  State<FZBAppBar> createState() => _FZBAppBarState();
}

class _FZBAppBarState extends State<FZBAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 4,
            blurRadius: 2,
          )
        ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            AppbarContent(widget.title),
            widget.child != null ? widget.child! : Container()
          ],
        ));
  }
}
