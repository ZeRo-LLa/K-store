import 'package:flutter/material.dart';
import 'package:testapp/common/widgets/images/t_rounded_image.dart';
import 'package:testapp/common/widgets/texts/product_title_text.dart';
import 'package:testapp/common/widgets/texts/t_brand_title_text_with_verified_Icon.dart';
import 'package:testapp/utils/constants/colors.dart';
import 'package:testapp/utils/constants/image_strings.dart';
import 'package:testapp/utils/constants/sizes.dart';
import 'package:testapp/utils/helpers/helper_functions.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      children: [
        //Image
        TRoundedImage(
          imageUrl: TImages.bmwm8competition,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(TSize.sm),
          backgroundColor: dark ? TColors.darkerGrey : TColors.light,
        ),
        const SizedBox(width: TSize.spaceBtwItems),

        //Title, Price, Comp...
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TBrandTitleTextWithVerifiedIcon(title: 'BMW'),
              Flexible(
                child: TProductTitleText(
                  title: 'Black BMW M8 Competition',
                  maxLines: 1,
                ),
              ),
              //Atributes
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Color ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'Black ',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    TextSpan(
                      text: 'Complectation ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'M Sport ',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
