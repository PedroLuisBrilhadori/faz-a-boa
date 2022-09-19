// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AppBarIconWidget extends StatefulWidget {
  final BorderRadius borderRadius;
  final IconButton iconButton;

  const AppBarIconWidget(this.borderRadius, this.iconButton, {Key? key})
      : super(key: key);

  @override
  State<AppBarIconWidget> createState() => _AppBarIconWidgetState();
}

class _AppBarIconWidgetState extends State<AppBarIconWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 17.0, bottom: 17.0),
        decoration: BoxDecoration(
          color: Color.fromRGBO(25, 118, 210, 1),
          borderRadius: widget.borderRadius,
          // ignore: prefer_const_literals_to_create_immutables
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3.5,
              blurRadius: 5,
            )
          ],
        ),
        child: widget.iconButton);
  }
}
