// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AppBarIconWidget extends StatefulWidget {
  const AppBarIconWidget({Key? key}) : super(key: key);

  @override
  State<AppBarIconWidget> createState() => _AppBarIconWidgetState();
}

class _AppBarIconWidgetState extends State<AppBarIconWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
            top: 17.0,
            bottom: 17.0),
        decoration: BoxDecoration(
          color: Color.fromRGBO(25, 118, 210, 1),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(12.0),
            bottomRight: Radius.circular(12.0),
          ),
          // ignore: prefer_const_literals_to_create_immutables
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3.5,
              blurRadius: 5,
            )
          ],
        ),
        child: IconButton(
          icon: Icon(Icons.home_outlined),
          color: Colors.white,
          onPressed: () {},
        ));
  }
}
