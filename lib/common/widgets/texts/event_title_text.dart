import 'package:flutter/material.dart';

class EventTitleText extends StatelessWidget {
  const EventTitleText(
      {super.key,
      required this.title,
      this.smallSize = false,
      this.maxLines = 2,
      this.textAlign = TextAlign.left});

  final String title;
  final bool smallSize;
  final int maxLines;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: smallSize
          ? Theme.of(context).textTheme.labelLarge
          : Theme.of(context).textTheme.titleSmall,
      textAlign: textAlign,
    );
  }
}
