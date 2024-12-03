import 'package:flutter/material.dart';

import 'progress_indicator_and_rating.dart';

class overallEventRating extends StatelessWidget {
  const overallEventRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            '4.8',
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              EventRatingProgressIndicator(
                text: '5',
                value: 1.0,
              ),
              EventRatingProgressIndicator(
                text: '4',
                value: 0.8,
              ),
              EventRatingProgressIndicator(
                text: '3',
                value: 0.6,
              ),
              EventRatingProgressIndicator(
                text: '2',
                value: 0.4,
              ),
              EventRatingProgressIndicator(
                text: '1',
                value: 0.2,
              ),
            ],
          ),
        )
        // Rating Stars
      ],
    );
  }
}
