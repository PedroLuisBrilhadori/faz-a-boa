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
            top: 10.0,
            bottom: 10.0), //não tem como dar margin left < é uma action :(
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
