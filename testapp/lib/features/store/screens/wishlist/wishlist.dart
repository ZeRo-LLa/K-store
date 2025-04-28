import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:testapp/common/widgets/appbar/appbar.dart';
import 'package:testapp/common/widgets/icons/t_circular_icon.dart';
import 'package:testapp/common/widgets/products/products.cart/product_card_vertical.dart';
import 'package:testapp/features/authentication/controllers.onboarding/widgets/layouts/grid_layout.dart';
import 'package:testapp/features/store/screens/home/home.dart';
import 'package:testapp/utils/constants/sizes.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          TCircularIcon(
            icon: Iconsax.add,
            onPressed: () => Get.to(const HomeScreen()),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              TGridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => const TProductCartVertical(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
