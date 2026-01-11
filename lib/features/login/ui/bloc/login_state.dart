part of 'login_bloc.dart';

sealed class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

final class LoginInitial extends LoginState {}

final class LoginSucessState extends LoginState {
  @override
  List<Object> get props => [];
}

final class LoginFailedState extends LoginState {}
