import "package:flutter/material.dart";
import "package:iconsax/iconsax.dart";
import "package:testapp/common/widgets/icons/t_circular_icon.dart";
import "package:testapp/utils/constants/colors.dart";
import "package:testapp/utils/constants/sizes.dart";
import "package:testapp/utils/helpers/helper_functions.dart";

class TProductQuantityWithAddRemoveButton extends StatelessWidget {
  const TProductQuantityWithAddRemoveButton({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      children: [
        TCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          hight: 32,
          size: TSize.md,
          color: dark ? TColors.white : TColors.black,
          backgroundColor: dark ? TColors.darkerGrey : TColors.light,
        ),
        const SizedBox(width: TSize.spaceBtwItems),
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(width: TSize.spaceBtwItems),
        TCircularIcon(
          icon: Iconsax.add,
          width: 32,
          hight: 32,
          size: TSize.md,
          color: TColors.white,
          backgroundColor: TColors.primary,
        ),
      ],
    );
  }
}
