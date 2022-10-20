import 'package:faz_a_boa/app/modules/reset_password/forms/email_send.dart';
import 'package:faz_a_boa/app/modules/reset_password/forms/reset.page.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:faz_a_boa/app/modules/reset_password/emailsent/email.page.dart';
import 'package:faz_a_boa/app/modules/reset_password/successfull/successful.page.dart';

class ResetPasswordModule extends Module {
  @override
  final List<ModularRoute> routes = [
    ChildRoute('/email-sent', child: (_, args) => const EmailScreen()),
    ChildRoute('/successful', child: (_, args) => const SuccessFulScreen()),
    ChildRoute('/reset', child: (_, args) => const ResetPasswordForm()),
    ChildRoute('/', child: (_, args) => const EmailSendForm())
  ];
}
