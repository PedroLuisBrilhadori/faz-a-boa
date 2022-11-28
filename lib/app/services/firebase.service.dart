import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FirebaseService {
  void createAccount({
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

  void login({
    required String email,
    required String password,
  }) {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password)
        .then((res) {
      Modular.to.navigate('/home');
    }).catchError((e) {
      switch (e.code) {
        case 'user-not-found':
          print('Usuário não encontrado.');
          break;
        case 'invalid-email':
          print('Email é inválido.');
          break;
        case 'wrong-password':
          print('Senha Incorreta.');
          break;
        default:
          print(e.code.toString());
          break;
      }
    });
  }

  void logout() {
    FirebaseAuth.instance.signOut();

    Modular.to.navigate('/login');
  }
}
