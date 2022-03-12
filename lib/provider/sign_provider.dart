import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignProvider extends ChangeNotifier {
  final FirebaseAuth _authUser = FirebaseAuth.instance;

  Future signIn(BuildContext context, String email, String password) async {
    try {
      await _authUser.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.message!),
        ),
      );
    }
  }

  Future signUp(BuildContext context, String email, String password) async {
    try {
      _authUser.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.message!),
        ),
      );
    }
  }
}
