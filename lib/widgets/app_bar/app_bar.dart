// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:faz_a_boa/widgets/app_bar/app_bar_icon.dart';
import 'package:flutter/material.dart';

class FZBAppBar extends StatefulWidget {
  const FZBAppBar({Key? key}) : super(key: key);

  @override
  State<FZBAppBar> createState() => _FZBAppBarState();
}

class _FZBAppBarState extends State<FZBAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 85.0,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 4,
            blurRadius: 2,
          )
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppBarIconWidget(
                BorderRadius.only(
                  topRight: Radius.circular(12.0),
                  bottomRight: Radius.circular(12.0),
                ),
                IconButton(
                  icon: Icon(Icons.home_outlined),
                  color: Colors.white,
                  onPressed: () {},
                )),
            Text(
              'Postos',
            ),
            AppBarIconWidget(
              BorderRadius.only(
                topLeft: Radius.circular(12.0),
                bottomLeft: Radius.circular(12.0),
              ),
              IconButton(
                icon: Icon(Icons.settings_outlined),
                color: Colors.white,
                onPressed: () {},
              ),
            ),
          ],
        ));
  }
}
