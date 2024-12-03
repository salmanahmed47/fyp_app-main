import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';

class EventRatingBarIndicator extends StatelessWidget {
  const EventRatingBarIndicator({
    super.key,
    required this.rating,
  });
  final double rating;
  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rating,
      itemSize: 20,
      unratedColor: EventColors.grey,
      itemBuilder: (_, __) => const Icon(
        Iconsax.star1,
        color: EventColors.primary,
      ),
    );
  }
}
