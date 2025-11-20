import 'package:cosmentics/core/logic/helper_methods.dart';
import 'package:cosmentics/views/auth/sign_up.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AppLoginOrSignup extends StatelessWidget {
  const AppLoginOrSignup({
    super.key,
    required this.title,
    required this.subTitle,
    required this.onTap,
  });
  final String title, subTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
      child: Text.rich(
        textAlign: TextAlign.center,
        TextSpan(
          children: [
            TextSpan(
              text: title,
            ),
            TextSpan(
              recognizer: TapGestureRecognizer()..onTap = onTap,
              text: subTitle,
              style: TextStyle(
                color: Theme.of(context).primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
