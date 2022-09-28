import 'package:flutter_modular/flutter_modular.dart';

import 'package:faz_a_boa/app/modules/home/home.module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: HomeModule()),
  ];
}
