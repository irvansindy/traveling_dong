import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travelling_dong/models/user_model.dart';

class UserService {
  // ignore: prefer_final_fields
  CollectionReference _userReference =
      FirebaseFirestore.instance.collection('users');

  Future<void> setUser(UserModel user) async {
    try {
      _userReference.doc(user.id).set({
        'email': user.email,
        'name': user.name,
        'hobby': user.hobby,
        'balance': user.balance,
      });
    } catch (e) {
      // ignore: use_rethrow_when_possible
      throw e;
    }
  }
}
