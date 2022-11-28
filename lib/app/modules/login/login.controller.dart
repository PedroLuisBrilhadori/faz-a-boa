import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginController {
  void createAccount({
    required context,
    required String email,
    required String password,
    required String name,
    required String cpf,
  }) {
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((res) {
      FirebaseFirestore.instance.collection('users').add({
        'uid': res.user!.uid.toString(),
        'name': name,
        'cpf': cpf,
        'email': email
      });

      Modular.to.navigate('/home');
    }).catchError((e) {
      switch (e.code) {
        case 'email-already-in-use':
          print('O email já foi cadastrado');
          break;
        case 'invalid-email':
          print('O email é inválido');
          break;
        default:
          print(e.code.toString());
          break;
      }
    });
  }
}
