part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthSuccess extends AuthState {
  final String uid; // userModel

  AuthSuccess({required this.uid});
}

final class AuthFailure extends AuthState {
  final String message;

  AuthFailure(this.message);
}

final class AuthLoading extends AuthState {}
