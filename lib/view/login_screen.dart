import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:faz_a_boa/view/teste.dart';

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
              ],),
            //Second Column()
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 60.0),
                  textField('Email', login),
                  const SizedBox(height: 5.0),
                  textField('Senha', password),
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
                  ),                  const SizedBox(
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
                      children: const <TextSpan> [
                        TextSpan(text: 'Não tem uma conta?'),
                        TextSpan(
                          text: ' Crie agora!',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 7.0),
                  const Text(
                    'Esqueceu sua senha?',
                    style: TextStyle(color: Colors.black, fontSize: 17),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}