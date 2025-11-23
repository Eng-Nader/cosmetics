import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/ui/app_image.dart';
import '../../core/ui/app_resent_otp.dart';
import 'widgets/sucees_dialog.dart';

import '../../core/logic/helper_methods.dart';
import 'create_password.dart';
import '../../core/ui/app_verfiy_code.dart';
import '../../core/ui/app_button.dart';
import 'package:flutter/material.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key, this.isComeSignUp = false});
  final bool isComeSignUp;

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
                image: 'login_logo.png',
                height: 227.h,
                width: 284.w,
              ),
               SizedBox(height: 24.h),
               Text(
                textAlign: TextAlign.center,
                'Verify Code',
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
               SizedBox(
                height: 10.h,
              ),
              Text.rich(
                style: TextStyle(
                  color: const Color(0xff434C6D).withValues(alpha: .8),
                ),
                textAlign: TextAlign.center,
                const TextSpan(
                  text: 'We just sent a 4-digit verification code to \n ',

                  children: [
                    WidgetSpan(
                      child: Text(
                        textDirection: TextDirection.ltr,
                        '+20 1022658997',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    TextSpan(
                      text:
                          '. Enter the code in the box  \n  below to continue.',
                    ),
                  ],
                ),
              ),
               SizedBox(height: 40.h),
              TextButton(
                style: TextButton.styleFrom(
                  visualDensity: VisualDensity.compact,

                  alignment: AlignmentDirectional.centerStart,
                ),
                onPressed: () => Navigator.pop(context),
                child:  Text(
                  'Edit the number',
                  style: TextStyle(
                    fontSize: 14.sp,
                  ),
                ),
              ),
               SizedBox(height: 20.h),
              const AppVerfiyCode(),
              const AppResentOtp(),

               SizedBox(height: 60.h),
              AppButton(
                title: 'Done',
                onPressed: () {
                  if (isComeSignUp) {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return SucessDialog(
                          isComeSignUp: isComeSignUp,
                        );
                      },
                    );
                  } else {
                    goTo(const CreatePasswordView());
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
