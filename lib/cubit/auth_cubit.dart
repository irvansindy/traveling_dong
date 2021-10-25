import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:travelling_dong/models/user_model.dart';
import 'package:travelling_dong/services/auth_service.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  void singUp({
    required String email,
    required String password,
    required String name,
    String hobby = '',
  }) async {
    try {
      emit(AuthLoading());

      UserModel user = await AuthService().signUp(
        email: email,
        name: name,
        password: password,
        hobby: hobby,
      );

      emit(AuthSuccess(user));
    } catch (e) {
      emit(AuthFailed(e.toString()));
    }
  }
}
