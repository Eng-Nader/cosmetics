import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/logic/helper_methods.dart';
import '../../core/ui/app_button.dart';
import '../../core/ui/app_image.dart';
import '../../core/ui/app_input.dart';
import 'otp.dart';
import 'package:flutter/material.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding:  EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
               AppImage(
                image: 'login_logo.png',
                height: 227.h,
                width: 284.w,
              ),
               SizedBox(height: 24.h),
               Text(
                textAlign: TextAlign.center,
                'Forget Passwrod',
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
               SizedBox(
                height: 10.h,
              ),
              const Text(
                textAlign: TextAlign.center,
                'Please enter your phone number below \n to recovery your password.',
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
                height: 40.h,
              ),
              AppButton(
                title: 'Next',
                onPressed: () => goTo(const OtpView()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
