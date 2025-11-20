import '../../core/logic/helper_methods.dart';
import 'otp.dart';
import 'widgets/custom_auth_logo.dart';
import '../../core/ui/app_button.dart';
import 'package:flutter/material.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const CustomAuthLogo(title: 'Reset password'),
              const SizedBox(height: 30),
              Text(
                textAlign: TextAlign.center,
                'Please enter your phone number below\n  to recovery your password.',
                style: TextStyle(
                  color: const Color(0xff434C6D).withValues(alpha: .8),
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(height: 30),
              AppButton(
                title: 'next',
                onPressed: () => goTo(const OneTimePasswordView()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
