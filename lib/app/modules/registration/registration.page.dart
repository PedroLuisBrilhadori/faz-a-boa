import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:faz_a_boa/app/services/firebase.service.dart';
import 'package:faz_a_boa/app/modules/registration/pages.dart';
import 'package:faz_a_boa/app/widgets/text-field/models/text_field.model.dart';
import 'package:faz_a_boa/app/widgets/text-field/text_field.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => RegistrationScreenState();
}

class RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    PageModel page = registrationPage;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: CustomScrollView(reverse: true, slivers: [
          SliverFillRemaining(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 20, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  header(title: page.title, subTitle: page.subTitle),
                  fields(fields: page.fields, key: page.key),
                  //BUTTONS
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const SizedBox(height: 90.0),
                      Button(
                        label: 'Enviar',
                        color: Colors.green,
                        onPressed: () {
                          if (page.key.currentState!.validate()) {
                            String name = page.fields[0].controller.text;
                            String email = page.fields[1].controller.text;
                            String password = page.fields[2].controller.text;
                            String cpf = page.fields[3].controller.text;

                            FirebaseService().createAccount(
                              email: email,
                              password: password,
                              name: name,
                              cpf: cpf,
                            );
                          }
                        },
                      ),
                      const SizedBox(height: 17.0),
                      Button(
                        label: 'Voltar',
                        color: Colors.red,
                        onPressed: () => {Modular.to.navigate('/')},
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }

  Widget header({
    required String title,
    required String subTitle,
  }) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(title,
              style:
                  const TextStyle(fontSize: 27, fontWeight: FontWeight.w700)),
          Text(subTitle, style: const TextStyle(fontSize: 19))
        ]);
  }

  Widget fields(
      {required List<FieldModel> fields, required GlobalKey<FormState> key}) {
    return Form(
      key: key,
      autovalidateMode: AutovalidateMode.always,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BodyFields(fields: fields),
        ],
      ),
    );
  }
}

class Button extends StatelessWidget {
  final String label;
  final Color color;
  final dynamic onPressed;

  const Button({
    Key? key,
    required this.label,
    required this.color,
    this.onPressed,
  })  : assert(onPressed != null || onPressed is! void Function()),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidthSize = MediaQuery.of(context).size.width;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          minimumSize: Size(screenWidthSize - 48, 55), backgroundColor: color),
      onPressed: onPressed,
      child: Text(
        label,
        style: const TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }
}

class BodyFields extends StatelessWidget {
  final List<FieldModel> fields;
  const BodyFields({Key? key, required this.fields}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: generateFields(),
    );
  }

  List<Widget> generateFields() {
    final List<Widget> widgetFields = [];
    const EdgeInsetsGeometry margin = EdgeInsets.only(top: 10);

    for (var field in fields) {
      widgetFields.add(FzTextField(
        label: field.label,
        controller: field.controller,
        marign: margin,
        passwordField: field.passwordField,
        validator: field.validator,
        autovalidateMode: field.autovalidateMode,
        onChanged: field.onChanged,
      ));
    }

    return widgetFields;
  }
}
