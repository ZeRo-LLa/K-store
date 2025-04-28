import "package:flutter/material.dart";
import "package:testapp/common/widgets/images/t_circular_image.dart";
import "package:testapp/common/widgets/texts/product_prize_text.dart";
import "package:testapp/common/widgets/texts/product_title_text.dart";
import "package:testapp/common/widgets/texts/t_brand_title_text_with_verified_Icon.dart";
import "package:testapp/utils/constants/colors.dart";
import "package:testapp/utils/constants/enums.dart";
import "package:testapp/utils/constants/image_strings.dart";
import "package:testapp/utils/constants/sizes.dart";
import "package:testapp/utils/helpers/helper_functions.dart";
import "package:testapp/utils/theme/custom_themes/rounded_container.dart";

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Price
        Row(
          children: [
            // Sale Tag
            TRoundedContainer(
              radius: TSize.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                horizontal: TSize.sm,
                vertical: TSize.xs,
              ),
              child: Text(
                '15%',
                style: Theme.of(
                  context,
                ).textTheme.labelLarge!.apply(color: TColors.black),
              ),
            ),
            const SizedBox(width: TSize.spaceBtwItems),

            //Price
            Text(
              '\$100 000',
              style: Theme.of(context).textTheme.titleSmall!.apply(
                decoration: TextDecoration.lineThrough,
              ),
            ),
            const SizedBox(width: TSize.spaceBtwItems),
            const TProductPriceText(price: '85 000', isLarge: true),
          ],
        ),

        const SizedBox(height: TSize.spaceBtwItems / 1.5),

        //Title
        const TProductTitleText(title: 'BMW M5 Competition 2020'),
        const SizedBox(height: TSize.spaceBtwItems / 1.5),

        //Stack Status
        Row(
          children: [
            const TProductTitleText(title: 'Status'),
            const SizedBox(width: TSize.spaceBtwItems),
            Text('In Stack', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),

        const SizedBox(height: TSize.spaceBtwItems / 1.5),

        //Brand
        Row(
          children: [
            TCircularImage(
              image: TImages.carsIcon,
              width: 32,
              height: 32,
              overlayColor: darkMode ? TColors.white : TColors.black,
            ),
            const TBrandTitleTextWithVerifiedIcon(
              title: 'BMW',
              brandTextSize: TextSizes.medium,
            ),
          ],
        ),
      ],
    );
  }
}
