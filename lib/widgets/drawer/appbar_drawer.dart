// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
// ignore: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AppBarDrawer extends StatefulWidget {
  const AppBarDrawer({Key? key}) : super(key: key);

  @override
  State<AppBarDrawer> createState() => _AppBarDrawerState();
}

class _AppBarDrawerState extends State<AppBarDrawer> {
  final List<String> entries = <String>['Notificações', 'GPS', 'Sobre', 'Sair'];
  final List<Color> textColor = <Color>[
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.red
  ];
  final List<IconData> leadingIcon = <IconData>[
    Icons.chat_bubble_outlined,
    Icons.gps_fixed_outlined,
    Icons.person_rounded,
    Icons.exit_to_app_outlined
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Row(children: [
        ListView.separated(
          itemCount: entries.length,
          itemBuilder: (context, index) {
            return Container(
                child: ListTile(
              leading: Icon(leadingIcon[index], color: textColor[index]),
              title: Text(entries[index]),
            ));
          },
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
        ),
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Text('Configurações'),
        )
      ]),
    );
  }
}


/*ListTile(
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
        )*/