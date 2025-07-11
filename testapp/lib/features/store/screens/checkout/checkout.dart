import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testapp/common/widgets/appbar/appbar.dart';
import 'package:testapp/common/widgets/products/cart/coupon_widget.dart';
import 'package:testapp/features/authentication/controllers.onboarding/widgets/success_screen/success_screen.dart';
import 'package:testapp/features/store/screens/cart/widgets/cart_items.dart';
import 'package:testapp/features/store/screens/checkout/widgets/biling_address_sections.dart';
import 'package:testapp/features/store/screens/checkout/widgets/billing_amount_section.dart';
import 'package:testapp/features/store/screens/checkout/widgets/billing_payment_section.dart';
import 'package:testapp/navigation_menu.dart';
import 'package:testapp/utils/constants/colors.dart';
import 'package:testapp/utils/constants/image_strings.dart';
import 'package:testapp/utils/constants/sizes.dart';
import 'package:testapp/utils/helpers/helper_functions.dart';
import 'package:testapp/utils/theme/custom_themes/rounded_container.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              // Items in Cart
              const TCartItems(showAddRemoveButtons: false),
              const SizedBox(height: TSize.spaceBtwSections / 2),

              //Coupon TextField
              TCouponCode(),
              const SizedBox(height: TSize.spaceBtwSections),

              // Billing Section
              TRoundedContainer(
                showBorder: true,
                backgroundColor: dark ? TColors.dark : TColors.white,
                padding: const EdgeInsets.all(TSize.md),
                child: Column(
                  children: [
                    //Pricing
                    TBillingAmountSection(),
                    const SizedBox(height: TSize.spaceBtwItems),
                    //Divider
                    const Divider(),
                    const SizedBox(height: TSize.spaceBtwItems),
                    //Payment Methods
                    TBillingPaymentSection(),
                    const SizedBox(height: TSize.spaceBtwItems),

                    //Address
                    TBillingAddressSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSize.defaultSpace),
        child: ElevatedButton(
          onPressed:
              () => Get.to(
                () => SuccessScreen(
                  image: TImages.successfulpayment,
                  title: 'Payment Success!',
                  subTitle: 'Your item will be shipped soon!',
                  onPressed: () => Get.offAll(() => const NavigationMenu()),
                ),
              ),
          child: Text('Checkout \$90 000'),
        ),
      ),
    );
  }
}
