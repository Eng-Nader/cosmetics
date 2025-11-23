import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/logic/helper_methods.dart';
import 'otp.dart';
import '../../core/ui/app_button.dart';
import 'package:flutter/material.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding:  EdgeInsets.symmetric(horizontal: 16.r),
          child: Column(
            children: [
               SizedBox(height: 30.h),
              Text(
                textAlign: TextAlign.center,
                'Please enter your phone number below\n  to recovery your password.',
                style: TextStyle(
                  color: const Color(0xff434C6D).withValues(alpha: .8),
                  fontSize: 14.sp,
                ),
              ),
               SizedBox(
                height: 30.h,
              ),
               SizedBox(height: 30.h),
              AppButton(
                title: 'next',
                onPressed: () => goTo(const OtpView()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
