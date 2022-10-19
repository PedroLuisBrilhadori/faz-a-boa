import 'package:flutter/material.dart';

import 'package:faz_a_boa/app/widgets/header/header.dart';
import 'package:faz_a_boa/app/modules/login/components.dart';
import 'package:faz_a_boa/app/widgets/scaffold_base/scaffold_base.dart';

class SuccessFulScreen extends StatefulWidget {
  const SuccessFulScreen({super.key});

  @override
  State<SuccessFulScreen> createState() => _SuccessFulScreenState();
}

class _SuccessFulScreenState extends State<SuccessFulScreen> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldBase(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 20.0, 0, 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            header(
              title: 'Senha Alterada!',
              subTitle: 'Sua senha foi alterada com sucesso.',
            ),
            //MAIL IMAGE
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Image(
                    image: AssetImage('lib/assets/emailconfirmado.png'),
                    height: 200.0),
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
