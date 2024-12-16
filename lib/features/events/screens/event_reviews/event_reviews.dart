import 'package:flutter/material.dart';
import 'package:interestin_event_app/common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/events/ratings/rating_indicator.dart';
import '../../../../utils/constants/sizes.dart';
import 'widgets/rating_progress.dart';
import 'widgets/user_review_card.dart';

class EventReviewsScreen extends StatelessWidget {
  const EventReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: const EventAppBar(
        title: Text("Reviews & Ratings"),
        showBackArrow: true,
      ),
      // Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(EventSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'Reviews & Ratings are verfied by InterestIn Team and are from people who use the same type of events.'),
              const SizedBox(height: EventSizes.spaceBtwItems),

              // Overall Event ratings
              const overallEventRating(),
              const EventRatingBarIndicator(
                rating: 4.5,
              ),
              Text(
                '12,611',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: EventSizes.spaceBtwSections),

              // User Reviews List
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
