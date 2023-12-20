import 'package:firebase_auth/firebase_auth.dart';

class LoginRepository {
  static Future signUserIn({
    required String email,
    required String password,
  }) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return true;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password') {
        return 'Wrong Password';
      } else if (e.code == 'invalid-email') {
        return 'Invalid Email';
      } else if (e.code == 'user-not-found') {
        return 'User Not Found';
      } else if (e.code == 'INVALID_LOGIN_CREDENTIALS') {
        return 'Wrong Email Or Password';
      } else {
        return e.code;
      }
    } catch (e) {
      return e.toString();
    }
  }
}
