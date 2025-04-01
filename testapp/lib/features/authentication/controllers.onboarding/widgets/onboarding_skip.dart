import 'package:flutter/material.dart';
import 'package:testapp/features/authentication/controllers.onboarding/onboarding.controller.dart';
import 'package:testapp/utils/constants/sizes.dart';
import 'package:testapp/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSize.defaultSpace,
      child: TextButton(
        onPressed: () => OnboardingController.instance.skipPage(),
        child: const Text("Skip"),
      ),
    );
  }
}
