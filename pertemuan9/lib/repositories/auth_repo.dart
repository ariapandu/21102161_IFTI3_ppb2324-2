

import 'package:firebase_auth/firebase_auth.dart';

class AuthRepo {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserCredential?> login({
    required String email,
    required String password,
  }) async {
    try {
      final userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential;
    } on FirebaseAuthException catch (e) {
      rethrow; // Rethrow the specific FirebaseAuthException for better error handling
    } catch (e) {
      // Handle general exceptions (consider logging or providing a generic error message)
      rethrow;
    }
  }

  Future<UserCredential?> register({
    required String email,
    required String password,
  }) async {
    try {
      final userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential;
    } on FirebaseAuthException catch (e) {
      rethrow; // Rethrow the specific FirebaseAuthException for better error handling
    } catch (e) {
      // Handle general exceptions (consider logging or providing a generic error message)
      rethrow;
    }
  }
}
