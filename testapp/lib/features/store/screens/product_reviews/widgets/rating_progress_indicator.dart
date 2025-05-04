import 'package:flutter/material.dart';
import 'package:testapp/features/store/screens/product_reviews/widgets/progress_indicator_abd_rating.dart';

class TOverallProductRating extends StatelessWidget {
  const TOverallProductRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text('4.8', style: Theme.of(context).textTheme.displayLarge),
        ),
        Expanded(
          flex: 7,
          child: Column(
            children: [
              TRatingProgressindicator(text: '5', value: 1.0),
              TRatingProgressindicator(text: '4', value: 0.8),
              TRatingProgressindicator(text: '3', value: 0.6),
              TRatingProgressindicator(text: '2', value: 0.4),
              TRatingProgressindicator(text: '1', value: 0.2),
            ],
          ),
        ),
      ],
    );
  }
}
