import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/core/routes/app_router.gr.dart';
import 'package:test/features/onboarding/ui/bloc/onboarding_bloc.dart';
import 'package:test/utils/colors.dart';
import '../../../utils/app_words.dart';

@RoutePage()
class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocListener<OnboardingBloc, OnboardingState>(
          listener: (context, state) {
            if (state is OnboardingLoginTapState) {
              context.router.push(LoginRoute());
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: ShaderMask(
                    shaderCallback: (rect) {
                      return LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.white, Colors.transparent],
                      ).createShader(
                        Rect.fromLTRB(5, 3, rect.width, rect.height),
                      );
                    },
                    blendMode: BlendMode.modulate,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/onboarding/c1.png'),
                        Padding(padding: const EdgeInsets.all(8.0)),

                        Image.asset('assets/onboarding/c2.png'),
                        Padding(padding: const EdgeInsets.all(8.0)),

                        Image.asset('assets/onboarding/c3.png'),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    AppWords.onboardingHeadline,
                    style: TextStyle(
                      color: AppColor.textPrimary,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      AppWords.onboardingBodyText,
                      style: TextStyle(
                        color: AppColor.textSecondary,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    backgroundColor: AppColor.primary,
                  ),
                  onPressed: () {
                    BlocProvider.of<OnboardingBloc>(
                      context,
                    ).add(OnboardingLoginTapEvent());
                  },
                  child: const Text(
                    AppWords.onboardingLogInButton,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    backgroundColor: AppColor.background,
                    elevation: 5,
                  ),
                  onPressed: () {
                    BlocProvider.of<OnboardingBloc>(
                      context,
                    ).add(OnboardingSignUpTapEvent());
                  },
                  child: const Text(
                    AppWords.onboardingSignUpButton,
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
