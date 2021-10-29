import 'package:firebase_auth/firebase_auth.dart';
import 'package:travelling_dong/models/user_model.dart';
import 'package:travelling_dong/services/user_service.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserModel> signUp({
    required String email,
    required String name,
    required String password,
    String hobby = '',
  }) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);

      // ignore: unused_local_variable
      UserModel user = UserModel(
        id: userCredential.user!.uid,
        name: name,
        email: email,
        hobby: hobby,
        balance: 120000000,
      );
      await UserService().setUser(user);

      return user;
    } catch (e) {
      // ignore: use_rethrow_when_possible
      throw e;
    }
  }

  Future<UserModel> signIn(
      {required String email, required String password}) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);

      UserModel user =
          await UserService().getUserById(userCredential.user!.uid);

      return user;
    } catch (e) {
      // ignore: use_rethrow_when_possible
      throw e;
    }
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      // ignore: use_rethrow_when_possible
      throw e;
    }
  }
}
