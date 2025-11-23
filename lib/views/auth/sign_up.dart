import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/logic/helper_methods.dart';
import '../../core/ui/app_image.dart';
import '../../core/ui/app_input.dart';
import '../../core/ui/app_login_or_signup.dart';
import 'login.dart';
import 'otp.dart';
import '../../core/ui/app_button.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding:  EdgeInsets.symmetric(horizontal: 16.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
               AppImage(
                height: 100.h,
                image: 'splash_logo_two.png',
              ),
               SizedBox(
                height: 30.h,
              ),
               Text(
                textAlign: TextAlign.center,
                'Create account',
                style: TextStyle(
                  fontSize: 24.sp,

                  fontWeight: FontWeight.bold,
                ),
              ),
               SizedBox(
                height: 71.h,
              ),
              const AppInput(
                hintText: 'your Name',
                label: ' your Name',
              ),
               SizedBox(
                height: 10.h,
              ),
              const AppInput(
                withCountryCode: true,
                hintText: 'phone Number',
                label: 'phone Number',
              ),
               SizedBox(
                height: 10.h,
              ),
              const AppInput(
                hintText: 'your password',
                label: 'your password',
                isSuffix: true,
              ),
               SizedBox(
                height: 10.h,
              ),
              const AppInput(
                hintText: 'Confirm password',
                label: 'Confirm password',
                isSuffix: true,
              ),
               SizedBox(
                height: 80.h,
              ),
              AppButton(
                title: 'Create Account',
                onPressed: () => goTo(
                  const OtpView(
                    isComeSignUp: true,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const AppLoginOrSignup(),
    );
  }
}
