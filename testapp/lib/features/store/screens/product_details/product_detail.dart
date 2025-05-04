import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:testapp/common/widgets/texts/section_heading.dart';
import 'package:testapp/features/store/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:testapp/features/store/screens/product_details/widgets/product_attribute.dart';
import 'package:testapp/features/store/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:testapp/features/store/screens/product_details/widgets/product_meta_data.dart';
import 'package:testapp/features/store/screens/product_details/widgets/rating_share_widget.dart';
import 'package:testapp/features/store/screens/product_reviews/product_reviews.dart';
import 'package:testapp/utils/constants/sizes.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Product Image Slider
            TProductImageSlider(),

            //Product Details
            Padding(
              padding: EdgeInsets.only(
                right: TSize.defaultSpace,
                left: TSize.defaultSpace,
                bottom: TSize.defaultSpace,
              ),
              child: Column(
                children: [
                  //Rating and Share
                  TRatingAndShare(),

                  //Price, Title, Stock and Brand
                  TProductMetaData(),

                  // Atributes
                  TProductAttributes(),
                  const SizedBox(height: TSize.spaceBtwSections),

                  //Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Checkout'),
                    ),
                  ),
                  const SizedBox(height: TSize.spaceBtwSections),

                  // Description
                  const TSectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  const SizedBox(height: TSize.spaceBtwItems),
                  ReadMoreText(
                    'The 2020 BMW M5 is a high-performance luxury sedan combining power and precision. It features a 4.4-liter V8 engine delivering 600 horsepower for thrilling acceleration. With all-wheel drive and advanced tech, it offers both control and comfort. Sleek design and premium interior make it a true driver\'s car with everyday usability.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: " Show more",
                    trimExpandedText: ' Less',
                    moreStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                    lessStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                  // Reviews
                  const Divider(),
                  const SizedBox(height: TSize.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TSectionHeading(
                        title: 'Reviews(199)',
                        showActionButton: false,
                      ),
                      IconButton(
                        onPressed:
                            () => Get.to(() => const ProductReviewsScreen()),
                        icon: const Icon(Iconsax.arrow_right3, size: 18),
                      ),
                    ],
                  ),
                  const SizedBox(height: TSize.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
