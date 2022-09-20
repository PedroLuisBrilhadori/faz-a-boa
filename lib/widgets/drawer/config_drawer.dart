import 'package:faz_a_boa/widgets/drawer/model/config_options.model.dart';
import 'package:flutter/material.dart';

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
        "Notificações", Colors.black, Icons.chat_bubble_outlined, () => {}),
    ConfigOption('GPS', Colors.black, Icons.gps_fixed_outlined, () => {}),
    ConfigOption('Sobre', Colors.black, Icons.info_outline, () => {}),
    ConfigOption('Sair', Colors.red, Icons.exit_to_app_outlined, () => {}),
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
            onTap: options[index].ontap,
            leading:
                Icon(options[index].leadingIcon, color: options[index].color),
            title: Text(options[index].title),
          );
        },
      ),
    );
  }
}
