import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import 'package:faz_a_boa/app/modules/login/components.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var login = TextEditingController();
  var password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //First Column()
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                SizedBox(height: 120.0),
                Text('Entrar',
                    style: TextStyle(fontSize: 27, fontWeight: FontWeight.w700))
              ],
            ),
            //Second Column()
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 60.0),
                textField(
                    label: 'Email',
                    controller: login,
                    textInputType: TextInputType.emailAddress),
                const SizedBox(height: 5.0),
                textField(
                    label: 'Senha',
                    controller: password,
                    textInputType: TextInputType.text),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Esqueceu sua senha?',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    SizedBox(
                      width: screenWidth * 0.077,
                    )
                  ],
                ),
                loginButton('Confirmar', context),
              ],
            ),
            //Third Column()
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 60.0),
                Text(
                  'Ou continue com:',
                  style: TextStyle(color: Colors.grey[700], fontSize: 16),
                ),
                const SizedBox(
                  height: 7.0,
                ),
                connectWithButton(Buttons.FacebookNew, 'Facebook'),
                connectWithButton(Buttons.Google, 'Google'),
                const SizedBox(height: 15.0),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey[700],
                    ),
                    children: const <TextSpan>[
                      TextSpan(text: 'Não tem uma conta?'),
                      TextSpan(
                        text: ' Crie agora!',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 7.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
