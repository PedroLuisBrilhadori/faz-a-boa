import 'package:flutter/material.dart';

import '../login/components.dart';

bool isButtonActive = true;

class PasswordReset extends StatefulWidget {
  const PasswordReset({super.key});

  @override
  State<PasswordReset> createState() => _PasswordResetState();
}

class _PasswordResetState extends State<PasswordReset> {
  bool screenState = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //HEADER
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 120.0),
                    const Text('Redefinir Senha',
                        style: TextStyle(
                            fontSize: 27, fontWeight: FontWeight.w700)),
                    const SizedBox(height: 12.0),
                    headerText(screenState),
                  ]),
            ),
            //TEXT FIELDS
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 40.0),
                BodyFields(
                  screenState: screenState,
                ),
              ],
            ),
            //BUTTONS
            Column(
              children: [
                const SizedBox(height: 90.0),
                Button(label: 'Enviar', tContext: context /*, Colors.green*/),
                const SizedBox(height: 17.0),
                flowButton('Voltar', context, Colors.red)
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget headerText(bool screenState) {
  if (screenState) {
    return Column(
      children: const [
        Text(
            'Esqueceu a senha? Digite seu e-mail abaixo para começarmos a redefinir.',
            style: TextStyle(fontSize: 19))
      ],
    );
  } else {
    return Column(
      children: const [
        Text(
            'Um e-mail com um código de confirmação foi enviado, insira o código e redifina sua senha!',
            style: TextStyle(fontSize: 19))
      ],
    );
  }
}
/*------------------------------------------*/

Widget flowButton(String label, BuildContext context, Color color) {
  final double screenWidthSize = MediaQuery.of(context).size.width;
  return TextButton(
    style: ElevatedButton.styleFrom(
        minimumSize: Size(screenWidthSize - 48, 55), backgroundColor: color),
    onPressed: () {},
    child: Text(
      label,
      style: const TextStyle(fontSize: 18, color: Colors.white),
    ),
  );
}

class Button extends StatefulWidget {
  final String label;
  final BuildContext tContext;
  /*final Color color;*/

  const Button({
    Key? key,
    required this.label,
    required this.tContext,
    /*required this.color*/
  }) : super(key: key);

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    final double screenWidthSize = MediaQuery.of(context).size.width;
    return TextButton(
      style: ElevatedButton.styleFrom(
          minimumSize:
              Size(screenWidthSize - 48, 55) /*, backgroundColor: color*/),
      onPressed: () {},
      child: Text(
        widget.label,
        style: const TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }
}

/*
Widget bodyFields(bool screenState) {
  var email = TextEditingController();
  var cpf = TextEditingController();
  var code = TextEditingController();
  var password = TextEditingController();
  var comPassword = TextEditingController();

  bool isButtonActive = true;

  email.addListener(() {
    final isButtonActive = email.text.isNotEmpty;
    setState()
  });

  @override
  void initState() {
    super.initState();

  }

  @override
  void dispose() {
    email.dispose();
    cpf.dispose();
    code.dispose();
    password.dispose();
    comPassword.dispose();
  }

  if (screenState) {
    return Column(
      children: [
        textField('E-mail', email, TextInputType.emailAddress),
        textField('CPF', cpf, TextInputType.number),
      ],
    );
  } else {
    return Column(
      children: [
        textField('Código', code, TextInputType.text),
        PasswordField(label: 'Nova Senha', variable: password),
        PasswordField(label: 'Confirmar Senha', variable: comPassword),
      ],
    );
  }
}
*/

class BodyFields extends StatefulWidget {
  final bool screenState;

  const BodyFields({Key? key, required this.screenState}) : super(key: key);

  @override
  State<BodyFields> createState() => _BodyFieldsState();
}

class _BodyFieldsState extends State<BodyFields> {
  var email = TextEditingController();
  var cpf = TextEditingController();
  var code = TextEditingController();
  var password = TextEditingController();
  var comPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    email.addListener(() {
      final innerIsButtonActive = false;
      setState(() => isButtonActive = innerIsButtonActive);
    });

    if (widget.screenState) {
      return Column(
        children: [
          textField('E-mail', email, TextInputType.emailAddress),
          textField('CPF', cpf, TextInputType.number),
        ],
      );
    } else {
      return Column(
        children: [
          textField('Código', code, TextInputType.text),
          PasswordField(label: 'Nova Senha', variable: password),
          PasswordField(label: 'Confirmar Senha', variable: comPassword),
        ],
      );
    }
  }
}
