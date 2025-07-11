import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:testapp/common/widgets/appbar/appbar.dart";
import "package:testapp/features/store/screens/cart/widgets/cart_items.dart";
import "package:testapp/features/store/screens/checkout/checkout.dart";
import "package:testapp/utils/constants/sizes.dart";

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(TSize.defaultSpace),
        child: TCartItems(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSize.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => const CheckoutScreen()),
          child: Text('Checkout \$90 000'),
        ),
      ),
    );
  }
}
