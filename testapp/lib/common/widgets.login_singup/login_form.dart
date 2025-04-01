import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:testapp/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:testapp/features/authentication/screens/singup.widgets/singup.dart';
import 'package:testapp/navigation_menu.dart';
import 'package:testapp/utils/constants/sizes.dart';
import 'package:testapp/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSize.spaceBtwSections),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TText.email,
              ),
            ),
            const SizedBox(height: TSize.spaceBtwInputFields),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: TText.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: TSize.spaceBtwInputFields / 2),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Remember Me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(TText.rememberMe),
                  ],
                ),
                // Forget password
                TextButton(
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  child: const Text(TText.forgetPassword),
                ),
              ],
            ),
            const SizedBox(height: TSize.spaceBtwSections),
            //sing in button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const NavigationMenu()),
                child: Text(TText.signIn),
              ),
            ),
            const SizedBox(height: TSize.spaceBtwSections),

            //Create account
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const SingupScreen()),
                child: Text(TText.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
