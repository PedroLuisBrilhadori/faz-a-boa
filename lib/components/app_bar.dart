// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:faz_a_boa/components/app_bar_right_icon_widgets.dart';
import 'package:faz_a_boa/components/app_bar_left_icon_widgets.dart';
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
            AppBarIconWidget(),
            Text('Postos', ),
            AppBarRIconWidget(),
          ],
        ));
  }
}

/*
appBar: PreferredSize(
            preferredSize: Size.fromHeight(1.0),
            child: AppBar(
                backgroundColor: Colors.white,
                title: Text('Title'),
                centerTitle: true,
                leading: Container(
                    margin:
                        EdgeInsets.only(top: 10.0, bottom: 5.0, right: 13.0),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(25, 118, 210, 1),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(12.0),
                        bottomRight: Radius.circular(12.0),
                      ),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.settings_outlined),
                      color: Colors.white,
                      onPressed: () {},
                    ))))
                    */