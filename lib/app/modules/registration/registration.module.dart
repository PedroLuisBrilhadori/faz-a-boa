import 'package:flutter_modular/flutter_modular.dart';
import 'package:faz_a_boa/app/modules/registration/registration.page.dart';

class RegistrationModule extends Module {
  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute,
        child: (_, args) => const RegistrationScreen()),
  ];
}
