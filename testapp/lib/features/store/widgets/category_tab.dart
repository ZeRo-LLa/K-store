import 'package:flutter/material.dart';
import 'package:testapp/common/widgets/products/products.cart/brand_show_case.dart';
import 'package:testapp/common/widgets/products/products.cart/product_card_vertical.dart';
import 'package:testapp/common/widgets/texts/section_heading.dart';
import 'package:testapp/features/authentication/controllers.onboarding/widgets/layouts/grid_layout.dart';
import 'package:testapp/utils/constants/image_strings.dart';
import 'package:testapp/utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),

      children: [
        Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              const TBrandShowCase(
                images: [TImages.bmwm8competition, TImages.carsIcon],
              ),
              const SizedBox(height: TSize.spaceBtwItems),

              TSectionHeading(title: 'You might like', onPressed: () {}),
              const SizedBox(height: TSize.spaceBtwItems),

              TGridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => const TProductCartVertical(),
              ),
              const SizedBox(height: TSize.spaceBtwSections),
            ],
          ),
        ),
      ],
    );
  }
}
