import 'package:bookly/core/utils/Style.dart';
import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    super.key,
    this.alignment = MainAxisAlignment.start,
  });
  final MainAxisAlignment alignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: alignment,
      children: const [
        Icon(
          Icons.star,
          size: 20,
          color: Colors.yellow,
        ),
        SizedBox(
          width: 3,
        ),
        Text(
          '4.9',
          style: Styles.textStyle14,
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          '(2555)',
          style: Styles.textStyle14,
        ),
      ],
    );
  }
}
