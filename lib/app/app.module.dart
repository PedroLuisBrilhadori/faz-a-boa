import 'package:flutter_modular/flutter_modular.dart';

import 'package:faz_a_boa/app/modules/registration/registration.module.dart';
import 'package:faz_a_boa/app/modules/password_reset/reset.module.dart';
import 'package:faz_a_boa/app/modules/home/home.module.dart';
import 'package:faz_a_boa/app/modules/login/login.module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/home', module: HomeModule()),
    ModuleRoute('/login', module: LoginModule()),
    ModuleRoute('/registration', module: RegistrationModule()),
    ModuleRoute('/', module: PasswordResetModule()),
  ];
}
