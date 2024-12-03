import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:interestin_event_app/common/widgets/icons/event_circular_icon.dart';
import 'package:interestin_event_app/utils/constants/sizes.dart';

import '../../../../../utils/constants/colors.dart';

class EventBottomAddToCart extends StatelessWidget {
  const EventBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: EventSizes.defaultSpace,
          vertical: EventSizes.defaultSpace / 2),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(EventSizes.cardRadiusLg),
          topRight: Radius.circular(EventSizes.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const EventCircularIcon(
                icon: Iconsax.minus,
                backgroundColor: EventColors.darkGrey,
                width: 40,
                height: 40,
                color: EventColors.white,
              ),
              const SizedBox(
                width: EventSizes.spaceBtwItems,
              ),
              Text(
                '2',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(
                width: EventSizes.spaceBtwItems,
              ),
              const EventCircularIcon(
                icon: Iconsax.add,
                backgroundColor: EventColors.black,
                width: 40,
                height: 40,
                color: EventColors.white,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(EventSizes.md),
              backgroundColor: EventColors.black,
              side: const BorderSide(color: EventColors.black),
            ),
            child: const Text('Add to Cart'),
          )
        ],
      ),
    );
  }
}
