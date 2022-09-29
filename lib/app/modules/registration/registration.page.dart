import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import 'package:faz_a_boa/app/modules/login/components.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  var name = TextEditingController();
  var email = TextEditingController();
  var password = TextEditingController();
  var cpf = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //HEADER
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                SizedBox(height: 120.0),
                Text('Cadastro',
                    style: TextStyle(fontSize: 27, fontWeight: FontWeight.w700))
              ],
            ),
            //TEXT FIELDS
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 60.0),
                textField('Nome Completo', name),
                const SizedBox(height: 5.0),
                textField('E-mail', email),
                const SizedBox(height: 5.0),
                textField('CPF', cpf),
                const SizedBox(height: 5.0),
                passwordField('Senha', password),
              ],
            ),
            //BUTTONS
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                loginButton('Cadastrar', context),
                const SizedBox(
                  height: 25.0,
                ),
                Text(
                  'Ou cadastre-se com:',
                  style: TextStyle(color: Colors.grey[700], fontSize: 16),
                ),
                const SizedBox(
                  height: 7.0,
                ),
                connectWithButton(Buttons.FacebookNew, 'Facebook'),
                connectWithButton(Buttons.Google, 'Google'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
