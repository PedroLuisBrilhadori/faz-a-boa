import 'package:flutter_modular/flutter_modular.dart';

import 'package:faz_a_boa/app/modules/add_station/add_station.page.dart';

class AddStationModule extends Module {
  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute,
        child: (_, args) => const AddStationScreen()),
  ];
}
