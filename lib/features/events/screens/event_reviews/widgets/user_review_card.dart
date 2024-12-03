import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:interestin_event_app/common/widgets/custom_shapes/containers/event_rounded_container.dart';
import 'package:interestin_event_app/common/widgets/events/ratings/rating_indicator.dart';
import 'package:interestin_event_app/utils/constants/colors.dart';
import 'package:interestin_event_app/utils/constants/image_strings.dart';
import 'package:interestin_event_app/utils/constants/sizes.dart';
import 'package:interestin_event_app/utils/helpers/helper_functions.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EventHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(EventImages.userProfileImage2),
                ),
                const SizedBox(
                  width: EventSizes.spaceBtwItems,
                ),
                Text(
                  'Muhammad Humaid',
                  style: Theme.of(context).textTheme.titleLarge,
                )
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(
          height: EventSizes.md,
        ),

        // Review
        Row(
          children: [
            const EventRatingBarIndicator(rating: 4),
            const SizedBox(
              width: EventSizes.spaceBtwItems,
            ),
            Text(
              '01 Nov, 2024',
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
        const SizedBox(
          height: EventSizes.spaceBtwItems,
        ),
        const ReadMoreText(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
          'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
          'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '
          'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. '
          'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'Show more',
          trimExpandedText: 'Show less',
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: EventColors.primary),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: EventColors.primary),
        ),
        const SizedBox(
          height: EventSizes.spaceBtwItems,
        ),

        // Company Review
        EventRoundedContainer(
          backgroundColor: dark ? EventColors.darkGrey : EventColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(EventSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('InterestIn',
                        style: Theme.of(context).textTheme.titleMedium),
                    Text('02 Nov, 2024',
                        style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                const SizedBox(
                  height: EventSizes.spaceBtwItems,
                ),
                const ReadMoreText(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                  'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
                  'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '
                  'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. '
                  'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Show more',
                  trimExpandedText: 'Show less',
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: EventColors.primary),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: EventColors.primary),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: EventSizes.spaceBtwSections,
        ),
      ],
    );
  }
}
