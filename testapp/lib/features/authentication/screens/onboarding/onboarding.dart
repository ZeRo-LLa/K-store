import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testapp/features/authentication/controllers.onboarding/onboarding.controller.dart';
import 'package:testapp/features/authentication/controllers.onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:testapp/features/authentication/controllers.onboarding/widgets/onboarding_next_button.dart';
import 'package:testapp/features/authentication/controllers.onboarding/widgets/onboarding_page.dart';
import 'package:testapp/features/authentication/controllers.onboarding/widgets/onboarding_skip.dart';
import 'package:testapp/utils/constants/image_strings.dart';
import 'package:testapp/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          //Scroll Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TText.onBoardingTitle1,
                subTitle: TText.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TText.onBoardingTitle2,
                subTitle: TText.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TText.onBoardingTitle3,
                subTitle: TText.onBoardingSubTitle3,
              ),
            ],
          ),
          //Skip Button
          const OnBoardingSkip(),

          //Dot Navigation SmothPageIndicator
          const OnBoardingDotNavigation(),

          //Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
