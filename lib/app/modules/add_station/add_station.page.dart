import 'package:faz_a_boa/app/modules/add_station/add_station.utils.dart';
import 'package:faz_a_boa/app/services/stations.service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:faz_a_boa/app/services/firebase.service.dart';
import 'package:faz_a_boa/app/modules/add_station/pages.dart';
import 'package:faz_a_boa/app/widgets/text-field/models/text_field.model.dart';
import 'package:faz_a_boa/app/widgets/text-field/text_field.dart';

class AddStationScreen extends StatefulWidget {
  const AddStationScreen({super.key});

  @override
  State<AddStationScreen> createState() => AddStationnState();
}

class AddStationnState extends State<AddStationScreen> {
  PageModel page = addStationPage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                header(title: page.title, subTitle: page.subTitle),

                const SizedBox(height: 15),

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
                          StationService().addStation(createStation(page));
                        }
                      },
                    ),
                    const SizedBox(height: 17.0),
                    Button(
                      label: 'Voltar',
                      color: Colors.red,
                      onPressed: () => {Modular.to.navigate('/home')},
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
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
          Text(
            title,
            style: const TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.w700,
            ),
          ),
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
        textInputType: field.textInputType,
      ));
    }

    return widgetFields;
  }
}
