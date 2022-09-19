// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
// ignore: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AppBarDrawer extends StatefulWidget {
  const AppBarDrawer({Key? key}) : super(key: key);

  @override
  State<AppBarDrawer> createState() => _AppBarDrawerState();
}

class _AppBarDrawerState extends State<AppBarDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('Configurações',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
                ]),
          ),
          ListTile(
            leading: Icon(Icons.chat_bubble_outlined),
            title: const Text('Notificações'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.gps_fixed_outlined),
            title: const Text('GPS'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.person_rounded),
            title: const Text('Sobre'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app_outlined, color: Colors.red),
            title: const Text('Sair'),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
