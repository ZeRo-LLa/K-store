import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:testapp/features/authentication/screens/onboarding/onboarding.dart';
import 'package:testapp/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}
