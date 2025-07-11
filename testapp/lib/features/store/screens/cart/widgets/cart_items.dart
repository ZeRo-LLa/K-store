import 'package:flutter/material.dart';
import 'package:testapp/common/widgets/products/cart/add_remove_button.dart';
import 'package:testapp/common/widgets/products/cart/cart_item.dart';
import 'package:testapp/common/widgets/texts/product_prize_text.dart';
import 'package:testapp/utils/constants/sizes.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({super.key, this.showAddRemoveButtons = true});

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder:
          (_, __) => const SizedBox(height: TSize.spaceBtwSections),
      itemCount: 3,
      itemBuilder:
          (_, index) => Column(
            children: [
              TCartItem(),
              if (showAddRemoveButtons) SizedBox(height: TSize.spaceBtwItems),
              if (showAddRemoveButtons)
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 70),

                        //Add remove Buttons
                        TProductQuantityWithAddRemoveButton(),
                      ],
                    ),

                    // Product total price
                    TProductPriceText(price: '90 000'),
                  ],
                ),
            ],
          ),
    );
  }
}
