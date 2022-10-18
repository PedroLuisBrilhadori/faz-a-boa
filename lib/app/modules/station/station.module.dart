import 'package:flutter_modular/flutter_modular.dart';

import 'package:faz_a_boa/app/modules/station/station.page.dart';

class StationModule extends Module {
  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => const StationScreen()),
  ];
}
