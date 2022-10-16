import 'package:flutter_modular/flutter_modular.dart';
import 'package:faz_a_boa/app/modules/emailsent/email.page.dart';

class EmailModule extends Module {
  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => const EmailScreen()),
  ];
}
