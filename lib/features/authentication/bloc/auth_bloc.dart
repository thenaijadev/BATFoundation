// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:bat_foundation/features/authentication/data/repository/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(AuthRepository repo) : super(AuthInitial()) {
    on<AuthEventLogin>((event, emit) async {
      emit(AuthStateIsLoading());
      final String email = event.email;
      final String password = event.password;
      final response = await repo.login(email: email, password: password);
      response.fold((l) => emit(AuthStateError(errorMessage: l)), (r) {
        return emit(AuthStateLoginSuccess());
      });
    });

    on<AuthEventRegister>((event, emit) async {
      emit(AuthStateIsLoading());
      final String email = event.email;
      final String password = event.password;
      final String date = event.birthDate;
      final String confirmPassword = event.confirmPassword;
      final String location = event.location;
      final String firstName = event.firstName;
      final String lastName = event.lastName;

      final response = await repo.register(
          email: email,
          password: password,
          lastname: lastName,
          firstname: firstName,
          location: location,
          passwordconfirm: confirmPassword,
          date: date);
      response.fold((l) => emit(AuthStateError(errorMessage: l)), (r) {
        return emit(AuthStateRegistrationSuccess(message: r["message"]));
      });
    });
  }
}
