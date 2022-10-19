import 'package:flutter/material.dart';

import 'package:faz_a_boa/app/widgets/app_bar/app_bar_content.dart';

class FZBAppBar extends StatefulWidget {
  final String title;
  final Widget? child;
  final String? subTitle;

  const FZBAppBar({
    Key? key,
    this.child,
    this.subTitle,
    required this.title,
  }) : super(key: key);

  @override
  State<FZBAppBar> createState() => _FZBAppBarState();
}

class _FZBAppBarState extends State<FZBAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 4,
            blurRadius: 2,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          AppbarContent(
            title: widget.title,
            subTitle: widget.subTitle,
          ),
          widget.child != null ? widget.child! : Container()
        ],
      ),
    );
  }
}
