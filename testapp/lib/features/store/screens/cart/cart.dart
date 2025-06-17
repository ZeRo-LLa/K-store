import "package:flutter/material.dart";
import "package:iconsax/iconsax.dart";
import "package:testapp/common/widgets/appbar/appbar.dart";
import "package:testapp/common/widgets/icons/t_circular_icon.dart";
import "package:testapp/common/widgets/images/t_rounded_image.dart";
import "package:testapp/common/widgets/products/cart/add_remove_button.dart";
import "package:testapp/common/widgets/products/cart/cart_item.dart";
import "package:testapp/common/widgets/texts/product_prize_text.dart";
import "package:testapp/common/widgets/texts/product_title_text.dart";
import "package:testapp/common/widgets/texts/t_brand_title_text_with_verified_Icon.dart";
import "package:testapp/utils/constants/colors.dart";
import "package:testapp/utils/constants/image_strings.dart";
import "package:testapp/utils/constants/sizes.dart";
import "package:testapp/utils/helpers/helper_functions.dart";

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(TSize.defaultSpace),
        child: ListView.separated(
          shrinkWrap: true,
          separatorBuilder:
              (_, __) => const SizedBox(height: TSize.spaceBtwSections),
          itemCount: 10,
          itemBuilder:
              (_, index) => Column(
                children: [
                  TCartItem(),
                  SizedBox(height: TSize.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 70),
                          TProductQuantityWithAddRemoveButton(),
                        ],
                      ),

                      //Add remove Buttons
                      TProductPriceText(price: '90 000'),
                    ],
                  ),
                ],
              ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSize.defaultSpace),
        child: ElevatedButton(
          onPressed: () {},
          child: Text('Checkout \$90 000'),
        ),
      ),
    );
  }
}
