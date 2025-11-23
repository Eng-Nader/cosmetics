import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/ui/app_button.dart';
import '../../core/ui/app_image.dart';
import '../../core/ui/app_input.dart';
import 'widgets/sucees_dialog.dart';
import 'package:flutter/material.dart';

class CreatePasswordView extends StatelessWidget {
  const CreatePasswordView({super.key});

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
                image: 'splash_logo_two.png',
                height: 50.h,
              ),
               SizedBox(height: 40.h),
               Text(
                textAlign: TextAlign.center,
                'create password',
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),

               SizedBox(height: 40.h),
               Text(
                textAlign: TextAlign.center,
                'The password should have at least \n 6 characters.',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Color(0xff8E8EA9),
                ),
              ),
               SizedBox(height: 40.h),
              const AppInput(
                isSuffix: true,
                hintText: 'new password',
                label: 'new password',
              ),
               SizedBox(
                height: 10.h,
              ),
              const AppInput(
                isSuffix: true,
                hintText: 'confirm password',
                label: 'confirm password',
              ),
               SizedBox(
                height: 40.h,
              ),
              AppButton(
                title: 'Confirm',
                onPressed: () => showDialog(
                  context: context,
                  builder: (context) => const SucessDialog(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
