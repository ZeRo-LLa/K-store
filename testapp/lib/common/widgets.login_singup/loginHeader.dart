import 'package:flutter/material.dart';
import 'package:testapp/utils/constants/image_strings.dart';
import 'package:testapp/utils/constants/sizes.dart';
import 'package:testapp/utils/constants/text_strings.dart';
import 'package:testapp/utils/helpers/helper_functions.dart';

class TloginHeader extends StatelessWidget {
  const TloginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(dark ? TImages.darkAppLogo : TImages.lightAppLogo),
        ),
        Text(
          TText.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: TSize.sm),
        Text(
          TText.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
