import 'package:faz_a_boa/app/modules/password_reset/reset.page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PasswordResetModule extends Module {
  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute,
        child: (_, args) => const PasswordReset()),
  ];
}
