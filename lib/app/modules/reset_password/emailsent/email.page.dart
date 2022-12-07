import 'package:flutter/material.dart';

import 'package:faz_a_boa/app/modules/login/components.dart';
import 'package:faz_a_boa/app/widgets/header/header.dart';
import 'package:faz_a_boa/app/widgets/scaffold_base/scaffold_base.dart';
import 'package:flutter_modular/flutter_modular.dart';

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
        padding: const EdgeInsets.only(left: 20, right: 0, bottom: 50, top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(
              title: 'Email Enviado',
              subTitle: 'Um email para redefinir sua senha foi enviado!',
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
                loginButton(
                    label: 'OK',
                    context: context,
                    onPressed: () => {Modular.to.navigate('/')}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
