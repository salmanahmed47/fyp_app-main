import 'package:flutter/material.dart';
// import 'package:interestin_event_app/common/widgets/chips/choice_chips.dart';
import 'package:interestin_event_app/common/widgets/custom_shapes/containers/event_rounded_container.dart';
import 'package:interestin_event_app/common/widgets/texts/event_price_text.dart';
import 'package:interestin_event_app/common/widgets/texts/event_title_text.dart';
import 'package:interestin_event_app/common/widgets/texts/section_heading.dart';
import 'package:interestin_event_app/utils/constants/colors.dart';
import 'package:interestin_event_app/utils/constants/sizes.dart';

import '../../../../../utils/helpers/helper_functions.dart';

class EventAttributes extends StatelessWidget {
  const EventAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EventHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        // Selected Attribute Pricing and Description
        EventRoundedContainer(
          padding: const EdgeInsets.all(EventSizes.md),
          backgroundColor: dark ? EventColors.darkerGrey : EventColors.grey,
          child: Column(
            children: [
              // Title, Price and Stock Status
              Row(
                children: [
                  const EventSectionHeading(
                    title: 'Variation',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    width: EventSizes.spaceBtwItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const EventTitleText(
                            title: 'Price : ',
                            smallSize: true,
                          ),
                          const SizedBox(
                            width: EventSizes.spaceBtwItems,
                          ),
                          // Actual Price
                          Text(
                            '\$ 25',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),

                          const SizedBox(
                            width: EventSizes.spaceBtwItems,
                          ),
                          // Sale Price
                          const EventPriceText(price: '20')
                        ],
                      ),

                      // Stock Status
                      Row(
                        children: [
                          const EventTitleText(
                            title: 'Available Seats : ',
                            smallSize: true,
                          ),
                          Text(
                            '150',
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
              // Variation Description
              const SizedBox(
                height: EventSizes.spaceBtwItems / 1.5,
              ),
              const EventTitleText(
                title:
                    'This is the description of the Event 🎉 Dear Customer, you have successfully logged in to NBP Mobile Banking at 08:27 PM on 12/02/2024. For further assistance, please call NBP Helpline 021-111-627-627.',
                smallSize: true,
                maxLines: 3,
              ),
            ],
          ),
        ),
        // Attributes
        // if ever wanted to add attributes here is the link (https://youtu.be/gMpmLiZSe8E?list=PL5jb9EteFAOAusKTSuJ5eRl1BapQmMDT6&t=776)
        // const Column(
        //   children: [
        //     EventSectionHeading(title: 'Colors'),
        //     SizedBox(
        //       height: EventSizes.spaceBtwItems,
        //     ),
        //     EventChoiceCip(text: 'Green', isSelected: true)
        //   ],
        // )
      ],
    );
  }
}
