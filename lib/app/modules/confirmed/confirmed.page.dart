import 'package:faz_a_boa/app/modules/login/components.dart';
import 'package:flutter/material.dart';

class ConfirmedScreen extends StatefulWidget {
  const ConfirmedScreen({super.key});

  @override
  State<ConfirmedScreen> createState() => _ConfirmedScreenState();
}

class _ConfirmedScreenState extends State<ConfirmedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 20.0, 0, 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //HEADER
            Padding(
              padding:
                  const EdgeInsets.only(left: 30.0, right: 30.0, bottom: 50.0, top: 50.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Senha Alterada!',
                        style: TextStyle(
                            fontSize: 27, fontWeight: FontWeight.w700)),
                    Text(
                        'Sua senha foi alterada com sucesso.',
                        style: TextStyle(fontSize: 19)),
                  ]),
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
                loginButton('OK', context),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
