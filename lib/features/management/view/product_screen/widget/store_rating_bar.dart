import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

class StoreRatingBar extends StatelessWidget {
  const StoreRatingBar({
    super.key,
    required this.rating,
  });
  final double rating;
  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
        rating: rating,
        itemSize: 18,
        itemBuilder: (_, __) => const Icon(
              Iconsax.star1,
              color: Colors.amber,
            ));
  }
}
