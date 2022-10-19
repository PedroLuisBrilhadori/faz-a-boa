import 'package:flutter/material.dart';

import 'package:faz_a_boa/app/modules/login/components.dart';
import 'package:faz_a_boa/app/widgets/header/header.dart';
import 'package:faz_a_boa/app/widgets/scaffold_base/scaffold_base.dart';

class EmailScreen extends StatefulWidget {
  const EmailScreen({super.key});

  @override
  State<EmailScreen> createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldBase(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 20.0, 0, 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: header(
                title: 'Email Enviado',
                subTitle:
                    'Um email de confirmação para redefinir sua senha foi enviado! Confira sua caixa de entrada.',
              ),
            ),

            //MAIL IMAGE
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Image(
                    image: AssetImage('lib/assets/emailenviado.png'),
                    height: 300.0),
              ],
            ),
            //BUTTON
            Column(
              children: [
                loginButton(label: 'OK', context: context),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
