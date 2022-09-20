// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

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
      body: Center(
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Entrar',
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.w700))
                  ],
                ))),
            Expanded(
                flex: 1,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      textField('Email', login),
                      textField('Senha', password),
                      loginButton('Confirmar', context),
                    ],
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Ou continue com:',
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SignInButton(
                                Buttons.FacebookNew,
                                text: 'Facebook',
                                onPressed: () {},
                              ),
                            ]),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, bottom: 10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SignInButton(
                                Buttons.Google,
                                text: 'Google',
                                onPressed: () {},
                              ),
                            ]),
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                          ),
                          children: <TextSpan>[
                            TextSpan(text: 'Não tem uma conta?'),
                            TextSpan(
                              text: ' Crie agora!',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'Esqueceu sua senha?',
                        style: TextStyle(color: Colors.black, fontSize: 13),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

textField(label, variable) {
  return Container(
      margin: EdgeInsets.only(top: 15, left: 30, right: 30),
      child: TextFormField(
          style: TextStyle(fontSize: 15),
          controller: variable,
          decoration: InputDecoration(
              labelText: label,
              labelStyle: TextStyle(
                fontSize: 12,
                color: Colors.black,
              ),
              border: UnderlineInputBorder())));
}

loginButton(label, context) {
  final double screenWidthSize = MediaQuery.of(context).size.width;
  return Container(
      margin: EdgeInsets.only(top: 30),
      child: TextButton(
        style: ElevatedButton.styleFrom(
            minimumSize: Size(screenWidthSize - 48, 50), primary: Colors.black),
        child: Text(
          label,
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
        onPressed: () {},
      ));
}

connectWithButton(label, icon, context) {
  final double screenWidthSize = MediaQuery.of(context).size.width;
  return Container(
    margin: EdgeInsets.only(top: 15, bottom: 15),
    child: ElevatedButton.icon(
      onPressed: () {},
      icon: Icon(icon),
      label: Text(label,
          style: TextStyle(
            fontSize: 15,
            color: Colors.grey[800],
          )),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(screenWidthSize * 0.3930, 50),
        primary: Colors.grey[300],
      ),
    ),
  );
}

/*
Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SignInButton(
                                Buttons.Google,
                                text: 'Google',
                                onPressed: () {},
                                padding: const EdgeInsets.all(5),
                              ),
                            ],
                          ),

*/

/*

TextButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(screenWidthSize * 0.3930, 50), primary: Colors.grey[300]
      ),
      child: Text(
        label,
        style: TextStyle(fontSize: 15, color: Colors.grey[600],
        )
      ),
      onPressed: () {},
    ),

    */