import 'package:e_commerce_application/common/widgets/widget.images/appbar_widget.dart';
import 'package:e_commerce_application/features/management/view/product_review/widget/ratting_progress_indicator.dart';
import 'package:e_commerce_application/features/management/view/product_review/widget/user_review.dart';
import 'package:flutter/material.dart';

import '../../../../Utils/constant/sizes.dart';
import '../product_screen/widget/store_rating_bar.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// AppBar
      appBar: const AppBarWidget(
        showBackArrow: true,
        title: Text("Rating Screen "),
      ),

      /// Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(StoreSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'Ratings and reviews are verified by the users who used the same product as that you used'),
              const SizedBox(
                height: StoreSizes.spaceBTWSections / 2,
              ),

              /// Overall Product Rating
              const OverallRatting(),

              ///Rating Bar Indicator
              const StoreRatingBar(
                rating: 4,
              ),
              Text(
                '23231',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: StoreSizes.spaceBTWSections,
              ),

              ///User Review
              const UserReview(),
              const UserReview(),
              const UserReview(),
            ],
          ),
        ),
      ),
    );
  }
}
