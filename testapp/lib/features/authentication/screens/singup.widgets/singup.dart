import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:testapp/common/widgets.login_singup/TFormDivider.dart';
import 'package:testapp/common/widgets.login_singup/TSocialButtons.dart';
import 'package:testapp/features/authentication/screens/singup.widgets/singup_form.dart';
import 'package:testapp/utils/constants/sizes.dart';
import 'package:testapp/utils/constants/text_strings.dart';

class SingupScreen extends StatelessWidget {
  const SingupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                TText.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              const SizedBox(height: TSize.spaceBtwSections),
              // Form
              const TSingupForm(),

              SizedBox(height: TSize.spaceBtwSections),
              //Divider
              TFormDivider(dividerText: TText.orSignUpwith.capitalize!),
              SizedBox(height: TSize.spaceBtwSections),

              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
