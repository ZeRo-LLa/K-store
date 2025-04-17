import 'package:flutter/material.dart';
import 'package:testapp/common/custom_shapes/containers/primary_header_container.dart';
import 'package:testapp/common/custom_shapes/containers/search_container.dart';
import 'package:testapp/common/widgets/products/products.cart/product_card_vertical.dart';
import 'package:testapp/common/widgets/texts/section_heading.dart';
import 'package:testapp/features/authentication/controllers.onboarding/widgets/layouts/grid_layout.dart';
import 'package:testapp/features/authentication/screens/home/widgets/home_appbar.dart';
import 'package:testapp/features/authentication/screens/home/widgets/home_categories.dart';
import 'package:testapp/features/authentication/screens/home/widgets/promo_slider.dart';
import 'package:testapp/utils/constants/image_strings.dart';
import 'package:testapp/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  const THomeAppBar(),
                  const SizedBox(height: TSize.spaceBtwSections),

                  const TSearchContainer(text: "Search in Store"),
                  const SizedBox(height: TSize.spaceBtwItems / 1.5),

                  Padding(
                    padding: EdgeInsets.only(left: TSize.defaultSpace),
                    child: Column(
                      children: [
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        const SizedBox(height: TSize.spaceBtwItems),

                        THomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Body
            Padding(
              padding: const EdgeInsets.all(TSize.defaultSpace),
              child: Column(
                children: [
                  const TPromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3,
                      TImages.promoBanner4,
                    ],
                  ),
                  const SizedBox(height: TSize.spaceBtwSections),
                  TGridLayout(
                    itemCount: 2,
                    itemBuilder: (_, index) => const TProductCartVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
