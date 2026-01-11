part of 'login_bloc.dart';

sealed class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}


class OnTapLoginEvent extends LoginEvent {

  @override
  List<Object> get props => [];
}

class OnTapLoginWithAppleEvent extends LoginEvent {
  
  @override
  List<Object> get props => [];
}

class OnTapLoginWithGoogleEvent extends LoginEvent {
  
  @override
  List<Object> get props => [];
}