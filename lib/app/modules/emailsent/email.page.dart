import 'package:faz_a_boa/app/modules/login/components.dart';
import 'package:flutter/material.dart';

class EmailScreen extends StatefulWidget {
  const EmailScreen({super.key});

  @override
  State<EmailScreen> createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
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
              padding: const EdgeInsets.only(
                  left: 30.0, right: 30.0, bottom: 50.0, top: 50.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Email Enviado',
                        style: TextStyle(
                            fontSize: 27, fontWeight: FontWeight.w700)),
                    Text(
                        'Um email de confirmação para redefinir sua senha foi enviado! Confira sua caixa de entrada.',
                        style: TextStyle(fontSize: 19)),
                  ]),
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
                loginButton('OK', context),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
