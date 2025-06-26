import 'package:doctor_app/core/helper/extension.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AlreadyHaveNotAccountText extends StatelessWidget {
  const AlreadyHaveNotAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
          text: 'Already haven\'t an account yet?',
          style: Styles.font13DarkBlueRegular,
        ),
        TextSpan(
          text: 'Sign Up',
          style: Styles.font13BlueSemiBold,
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              context.pushReplacementNamed(Routes.signupScreen);
            },
        ),
      ]),
    );
  }
}
