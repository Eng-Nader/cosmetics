import '../../core/logic/helper_methods.dart';
import 'create_password.dart';
import 'widgets/cusotm_pin_code_fild.dart';
import 'widgets/custom_auth_intinal.dart';
import 'widgets/custom_auth_logo.dart';
import 'widgets/custom_dialog.dart';
import '../../core/ui/app_button.dart';
import 'package:flutter/material.dart';

class OneTimePasswordView extends StatelessWidget {
  const OneTimePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const CustomAuthLogo(
              title: 'Verify Code',
            ),
            const SizedBox(height: 20),
            Text.rich(
              textAlign: TextAlign.center,
              TextSpan(
                text: 'We just sent a 4-digit verification code to \n ',
                style: TextStyle(
                  color: const Color(0xff434C6D).withValues(alpha: .8),
                ),
                children: [
                  const TextSpan(
                    text: '+20 1022658997',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: '. Enter the code in the box  \n  below to continue.',
        
                    style: TextStyle(
                      color: const Color(0xff434C6D).withValues(alpha: .8),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Edit the number',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            const SizedBox(
              width: 200,
              child: CustomPinCodeFild(),
            ),
            const SizedBox(height: 40),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Didn’t receive a code? ',
                    ),
                    TextSpan(
                      text: 'Resend',
                      style: TextStyle(
                        color: Color(0xffD75D72),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 90),
            AppButton(
              title: 'Done',
              onPressed: () {
                buildDialog(
                  context,
                  title: 'Account Activated!',
                  subTitle:
                      'Congratulations! Your account \n  has been successfully activated',
                );
                goTo(const CreatePasswordView(), delayedSeconds: 3);
              },
            ),
          ],
        ),
      ),
    );
  }
}

void buildDialog(
  context, {
  required String title,
  required String subTitle,
}) async {
  await showDialog(
    context: context,
    builder: (context) {
      return CustomDialog(
        titel: title,
        subTitle: subTitle,
      );
    },
  );
}
