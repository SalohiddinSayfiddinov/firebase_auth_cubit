import 'package:firebase_app/data/auth/repository/login_repository.dart';
import 'package:firebase_app/data/auth/repository/signup_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  Future logUserIn({
    required String email,
    required String password,
  }) async {
    emit(AuthLoading());
    LoginRepository.signUserIn(
      email: email,
      password: password,
    ).then(
      (result) {
        if (result == true) {
          emit(AuthSuccess());
        } else {
          emit(AuthError(result));
        }
      },
    );
  }

  Future signUserUp({
    required String email,
    required String password,
  }) async {
    emit(AuthLoading());
    SignUpRepository.signUserUp(
      email: email,
      password: password,
    ).then(
      (result) {
        if (result == true) {
          emit(AuthSuccess());
        } else {
          emit(AuthError(result));
        }
      },
    );
  }
}
