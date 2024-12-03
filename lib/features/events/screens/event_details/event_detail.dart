import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:interestin_event_app/common/widgets/texts/section_heading.dart';
import 'package:interestin_event_app/features/events/screens/event_details/widgets/event_metadata.dart';
import 'package:interestin_event_app/utils/constants/sizes.dart';
import 'package:readmore/readmore.dart';
// import 'package:interestin_event_app/utils/helpers/helper_functions.dart';

import '../event_reviews/event_reviews.dart';
import 'widgets/bottom_add_to_cart.dart';
import 'widgets/event_attributes.dart';
import 'widgets/event_details_image_slider.dart';
import 'widgets/ratings_share_widget.dart';

class EventDetails extends StatelessWidget {
  const EventDetails({super.key});

  @override
  Widget build(BuildContext context) {
    // final dark = EventHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const EventBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1 - Event Images Slider
            const EventImageSlider(),

            // 2 - Event Details
            Padding(
              padding: const EdgeInsets.only(
                  right: EventSizes.defaultSpace,
                  left: EventSizes.defaultSpace,
                  bottom: EventSizes.defaultSpace),
              child: Column(
                children: [
                  // Rating & Share
                  const EventRatingShare(),

                  // Event Details
                  const EventMetadata(),

                  // Attributes
                  const EventAttributes(),
                  const SizedBox(
                    height: EventSizes.spaceBtwSections,
                  ),

                  // Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text('Checkout')),
                  ),
                  const SizedBox(
                    height: EventSizes.spaceBtwSections,
                  ),

                  // Description
                  const EventSectionHeading(
                      title: 'Description', showActionButton: false),
                  const SizedBox(
                    height: EventSizes.spaceBtwItems,
                  ),
                  const ReadMoreText(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla nec purus feugiat, molestie ipsum et, varius nunc. Nulla facilisi. Nullam ac nisi non nunc maximus ',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Show less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                  // Reviews
                  const Divider(),
                  const SizedBox(
                    height: EventSizes.spaceBtwItems,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const EventSectionHeading(
                        title: 'Reviews(120)',
                        showActionButton: false,
                      ),
                      IconButton(
                          onPressed: () =>
                              Get.to(() => const EventReviewsScreen()),
                          icon: const Icon(
                            Iconsax.arrow_right_3,
                            size: 18,
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: EventSizes.spaceBtwSections,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
