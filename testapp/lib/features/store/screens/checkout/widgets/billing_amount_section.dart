import 'package:flutter/material.dart';
import 'package:testapp/utils/constants/sizes.dart';

class TBillingAmountSection extends StatelessWidget {
  const TBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //SubTotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$143', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: TSize.spaceBtwItems / 2),

        //Shopping Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shopping Fee', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$14.3', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        const SizedBox(height: TSize.spaceBtwItems / 2),

        //Tax Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax Fee', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$14.3', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        const SizedBox(height: TSize.spaceBtwItems / 2),

        //Order Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$143', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
      ],
    );
  }
}
