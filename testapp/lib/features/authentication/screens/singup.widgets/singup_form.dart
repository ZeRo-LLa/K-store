import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:testapp/features/authentication/screens/singup.widgets/terms_conditions_checkbox.dart';
import 'package:testapp/features/authentication/screens/singup.widgets/verify_email.dart';
import 'package:testapp/utils/constants/sizes.dart';
import 'package:testapp/utils/constants/text_strings.dart';

class TSingupForm extends StatelessWidget {
  const TSingupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TText.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: TSize.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TText.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: TSize.spaceBtwInputFields),

          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: TText.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: TSize.spaceBtwInputFields),

          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: TText.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: TSize.spaceBtwInputFields),

          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: TText.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: TSize.spaceBtwInputFields),

          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: TText.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: TSize.spaceBtwInputFields),

          const TTermsAndConditionCheckbox(),
          SizedBox(height: TSize.spaceBtwSections),
          //Create Account
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen()),
              child: const Text(TText.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
