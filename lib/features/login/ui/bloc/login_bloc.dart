import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginEvent>(onTapLogin);
  }

  void onTapLogin(event, emit) async {
    emit(LoginSucessState());
    await Future.delayed(Duration(seconds: 5));
    emit(LoginInitial());
  }
}
