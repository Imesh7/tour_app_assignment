import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test/core/routes/app_router.gr.dart';
import 'package:test/features/login/ui/bloc/login_bloc.dart';
import 'package:test/utils/app_icons.dart';
import 'package:test/utils/colors.dart';
import '../../../utils/app_words.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: BlocListener<LoginBloc, LoginState>(
          listener: (context, state) {
            context.router.push(BottomNavBar());
          },
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppWords.loginHeadline,
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15.h),
                Text(AppWords.loginBodyText, style: TextStyle(fontSize: 14.sp)),
                SizedBox(height: 30.h),
                Text(AppWords.loginUsername, style: TextStyle(fontSize: 16.sp)),
                SizedBox(height: 10.h),

                TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(height: 10.h),

                const Text(AppWords.loginPassword),
                SizedBox(height: 10.h),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.key),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(height: 18.h),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    backgroundColor: AppColor.primary,
                    elevation: 5,
                  ),
                  onPressed: () {
                    BlocProvider.of<LoginBloc>(context).add(OnTapLoginEvent());
                  },
                  child: Text(
                    AppWords.loginButton,
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: AppColor.background,
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(AppWords.forgotPassword),
                  ),
                ),
                SizedBox(height: 18.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(child: const Divider()),
                    Container(
                      height: 20,
                      width: 50,
                      decoration: BoxDecoration(
                        color: AppColor.primary.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: const Text("OR")),
                    ),
                    Expanded(child: const Divider()),
                  ],
                ),
                SizedBox(height: 18.h),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    backgroundColor: Colors.black,
                    elevation: 5,
                  ),
                  onPressed: () {
                    BlocProvider.of<LoginBloc>(context).add(OnTapLoginEvent());
                  },
                  child: Row(
                    children: [
                      const Icon(Icons.apple, size: 24.0),
                      Expanded(child: Container()),
                      Text(
                        AppWords.signInWithApple,
                        style: TextStyle(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    elevation: 5,
                  ),
                  onPressed: () {
                    BlocProvider.of<LoginBloc>(context).add(OnTapLoginEvent());
                  },
                  child: Row(
                    children: [
                      Image.network(
                        AppIcons.googleLogo,
                        fit: BoxFit.cover,
                        height: 24.h,
                      ),
                      Expanded(child: Container()),
                      const Text(AppWords.signInWithGoogle),
                      Expanded(child: Container()),
                    ],
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
