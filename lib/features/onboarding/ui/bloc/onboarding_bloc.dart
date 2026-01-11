import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'onboarding_event.dart';
part 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc() : super(OnboardingInitial()) {
    on<OnboardingLoginTapEvent>(onTapLogin);
    on<OnboardingSignUpTapEvent>(onTapLogin);
  }

  void onTapLogin(event, emit) async {
    emit(OnboardingLoginTapState());
    await Future.delayed(Duration(milliseconds: 1000));
    emit(OnboardingInitial());
  }
}
