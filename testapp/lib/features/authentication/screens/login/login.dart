import 'package:flutter/material.dart';
import 'package:testapp/common/styles/spacing_styles.dart';
import 'package:testapp/common/widgets.login_singup/TFormDivider.dart';
import 'package:testapp/common/widgets.login_singup/TSocialButtons.dart';
import 'package:testapp/common/widgets.login_singup/login_form.dart';
import 'package:testapp/common/widgets.login_singup/loginHeader.dart';
import 'package:testapp/utils/constants/sizes.dart';
import 'package:testapp/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              const TloginHeader(),

              const TLoginForm(),

              //Divider
              TFormDivider(dividerText: TText.orSigninwith.capitalize!),
              const SizedBox(height: TSize.spaceBtwSections),

              // Footer
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
