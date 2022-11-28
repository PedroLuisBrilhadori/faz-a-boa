import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import 'package:faz_a_boa/app/services/firebase.service.dart';
import 'package:faz_a_boa/app/validators/email.validator.dart';
import 'package:faz_a_boa/app/validators/pass.validator.dart';
import 'package:faz_a_boa/app/widgets/text-field/text_field.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:faz_a_boa/app/modules/login/components.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  final GlobalKey<FormState> key = GlobalKey<FormState>();

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
                Form(
                  key: key,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    children: [
                      const SizedBox(height: 60.0),
                      FzTextField(
                        label: 'Email',
                        controller: emailController,
                        textInputType: TextInputType.emailAddress,
                        validator: (value) => emailValidator(value),
                      ),
                      const SizedBox(height: 5.0),
                      FzTextField(
                        label: 'Senha',
                        controller: passwordController,
                        textInputType: TextInputType.text,
                        passwordField: true,
                        validator: (value) => passValidator(value),
                      ),
                      const SizedBox(height: 10.0),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      child: const Text(
                        'Esqueceu sua senha?',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                      onTap: () => Modular.to.navigate('/reset-password'),
                    ),
                    SizedBox(
                      width: screenWidth * 0.077,
                    )
                  ],
                ),
                loginButton(
                  label: 'Confirmar',
                  context: context,
                  onPressed: () {
                    if (!key.currentState!.validate()) {
                      return;
                    }

                    String email = emailController.text;
                    String password = passwordController.text;

                    FirebaseService().login(email: email, password: password);
                  },
                ),
              ],
            ),
            //Third Column()
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 60.0),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey[700],
                    ),
                    children: <TextSpan>[
                      const TextSpan(text: 'Não tem uma conta?'),
                      TextSpan(
                          text: ' Crie agora!',
                          style: const TextStyle(color: Colors.black),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Modular.to.navigate('/registration');
                            }),
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
