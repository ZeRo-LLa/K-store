import 'package:flutter/material.dart';
import 'package:testapp/features/store/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:testapp/features/store/screens/product_details/widgets/product_meta_data.dart';
import 'package:testapp/features/store/screens/product_details/widgets/rating_share_widget.dart';
import 'package:testapp/utils/constants/sizes.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
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
                  //Checkout Button
                  // Description
                  // Reviews
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
