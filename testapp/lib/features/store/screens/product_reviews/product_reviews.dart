import 'package:flutter/material.dart';
import 'package:testapp/common/widgets/appbar/appbar.dart';
import 'package:testapp/common/widgets/products/ratings/rating_indicator.dart';
import 'package:testapp/features/store/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:testapp/features/store/screens/product_reviews/widgets/user_review_card.dart';
import 'package:testapp/utils/constants/sizes.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Reviews & Ratings',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: true,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Ratings and reviews are verified and are from people who use the same type of device that you use.",
              ),
              const SizedBox(height: TSize.spaceBtwItems),

              //Overall Product Ratings
              const TOverallProductRating(),
              const TRatingBarIndicator(rating: 4.5),
              Text('12,643', style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: TSize.spaceBtwSections),

              // User Reviews List
              UserReviewCard(),
              UserReviewCard(),
              UserReviewCard(),
              UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
