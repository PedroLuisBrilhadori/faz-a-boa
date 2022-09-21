import 'package:flutter/material.dart';

import 'package:faz_a_boa/widgets/drawer/model/config_options.model.dart';

class ConfigDrawer extends StatefulWidget {
  const ConfigDrawer({Key? key}) : super(key: key);

  @override
  State<ConfigDrawer> createState() => _ConfigDrawerState();
}

class _ConfigDrawerState extends State<ConfigDrawer> {
  final List options = [
    const DrawerHeader(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Text('Configurações'),
    ),
    ConfigOption(
        label: "Notificações",
        color: Colors.black,
        icon: Icons.chat_bubble_outlined,
        onTap: () => {}),
    ConfigOption(
        label: 'GPS',
        color: Colors.black,
        icon: Icons.gps_fixed_outlined,
        onTap: () => {}),
    ConfigOption(
        label: 'Sobre',
        color: Colors.black,
        icon: Icons.info_outline,
        onTap: () => {}),
    ConfigOption(
        label: 'Sair',
        color: Colors.red,
        icon: Icons.exit_to_app_outlined,
        onTap: () => {}),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView.builder(
        itemCount: options.length,
        itemBuilder: (BuildContext context, int index) {
          if (options[index] is Widget) return options[index];

          if (options[index] is! ConfigOption) return Container();

          return ListTile(
            onTap: options[index].onTap,
            leading: Icon(options[index].icon, color: options[index].color),
            title: Text(options[index].label),
          );
        },
      ),
    );
  }
}
