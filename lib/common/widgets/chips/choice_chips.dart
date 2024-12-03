import 'package:flutter/material.dart';
import 'package:interestin_event_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:interestin_event_app/utils/constants/colors.dart';
import 'package:interestin_event_app/utils/helpers/helper_functions.dart';

class EventChoiceCip extends StatelessWidget {
  const EventChoiceCip(
      {super.key,
      required this.text,
      required this.isSelected,
      this.onSelected});

  final String text;
  final bool isSelected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = EventHelperFunctions.getColor(text) != null;
    return ChoiceChip(
      label: isColor ? const SizedBox() : Text(text),
      selected: isSelected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: isSelected ? EventColors.white : null),
      avatar: isColor
          ? EventCircularContainer(
              width: 50,
              height: 50,
              backgroundColor: EventHelperFunctions.getColor(text)!)
          : null,
      shape: isColor ? const CircleBorder() : null,
      labelPadding: isColor ? const EdgeInsets.all(0) : null,
      padding: isColor ? const EdgeInsets.all(0) : null,
      backgroundColor: isColor ? EventHelperFunctions.getColor(text)! : null,
    );
  }
}
