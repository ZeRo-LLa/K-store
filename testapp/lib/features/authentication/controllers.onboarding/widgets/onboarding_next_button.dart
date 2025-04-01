import 'package:flutter/material.dart';
import 'package:testapp/features/authentication/controllers.onboarding/onboarding.controller.dart';
import 'package:testapp/utils/constants/colors.dart';
import 'package:testapp/utils/constants/sizes.dart';
import 'package:testapp/utils/device/device_utility.dart';
import 'package:testapp/utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
      right: TSize.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnboardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          backgroundColor: dark ? TColors.primary : Colors.black,
        ),
        child: const Icon(Icons.arrow_right),
      ),
    );
  }
}
