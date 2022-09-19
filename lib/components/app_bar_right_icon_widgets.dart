// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AppBarRIconWidget extends StatefulWidget {
  const AppBarRIconWidget({Key? key}) : super(key: key);

  @override
  State<AppBarRIconWidget> createState() => _AppBarRIconWidgetState();
}

class _AppBarRIconWidgetState extends State<AppBarRIconWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
            top: 17.0,
            bottom: 17.0), //não tem como dar margin left < é uma action :(
        decoration: BoxDecoration(
          color: Color.fromRGBO(25, 118, 210, 1),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12.0),
            bottomLeft: Radius.circular(12.0),
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
          //padding?
          icon: Icon(Icons.settings_outlined),
          color: Colors.white,
          onPressed: () {},
        ));
  }
}
