import 'package:flutter/material.dart';
import 'package:testapp/common/widgets/chips/choice_chip.dart';
import 'package:testapp/common/widgets/texts/product_prize_text.dart';
import 'package:testapp/common/widgets/texts/product_title_text.dart';
import 'package:testapp/common/widgets/texts/section_heading.dart';
import 'package:testapp/utils/constants/colors.dart';
import 'package:testapp/utils/constants/sizes.dart';
import 'package:testapp/utils/helpers/helper_functions.dart';
import 'package:testapp/utils/theme/custom_themes/rounded_container.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        //Selected Attribute Pricing & Description
        TRoundedContainer(
          padding: const EdgeInsets.all(TSize.md),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  const TSectionHeading(
                    title: "Variation",
                    showActionButton: false,
                  ),
                  const SizedBox(width: TSize.spaceBtwItems),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(
                            title: "Price : ",
                            smallSize: true,
                          ),
                          const SizedBox(height: TSize.spaceBtwItems),
                          // Actual price
                          Text(
                            "\$90 000",
                            style: Theme.of(context).textTheme.titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          SizedBox(width: TSize.spaceBtwItems),
                          //Sale Price
                          TProductPriceText(price: '85 000'),
                        ],
                      ),

                      //Stack
                      Row(
                        children: [
                          const TProductTitleText(
                            title: "Stack : ",
                            smallSize: true,
                          ),
                          Text(
                            'In Stack',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              const TProductTitleText(
                title:
                    "The 2020 BMW M5 is a powerful sports sedan with a 600-hp V8 engine. It offers all-wheel drive, advanced tech, and a luxurious interior. Perfect balance of performance and comfort.",
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: TSize.spaceBtwItems),

        //Atributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: "Colors"),
            const SizedBox(height: TSize.spaceBtwItems / 2),
            Wrap(
              children: [
                TChoiceChip(
                  text: 'Grey',
                  selected: true,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: 'Black',
                  selected: false,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: 'Blue',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: "Size"),
            const SizedBox(height: TSize.spaceBtwItems / 2),
            Wrap(
              children: [
                TChoiceChip(
                  text: 'EU 34',
                  selected: true,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: 'EU 36',
                  selected: false,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: 'EU 38',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
