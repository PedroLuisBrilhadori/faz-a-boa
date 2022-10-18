import 'package:flutter_modular/flutter_modular.dart';

import 'package:faz_a_boa/app/modules/reset_password/forms/reset.page.dart';
import 'package:faz_a_boa/app/modules/reset_password/emailsent/email.page.dart';
import 'package:faz_a_boa/app/modules/reset_password/successfull/successful.page.dart';

class ResetPasswordModule extends Module {
  @override
  final List<ModularRoute> routes = [
    ChildRoute('/email-sent', child: (_, args) => const EmailScreen()),
    ChildRoute('/successful', child: (_, args) => const SuccessFulScreen()),
    ChildRoute('/', child: (_, args) => const ResetPasswordForms())
  ];
}
