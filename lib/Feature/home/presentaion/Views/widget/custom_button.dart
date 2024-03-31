import 'package:bookly/core/utils/Style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.text,
    required this.textColor,
    required this.borderRadius,
  });
  final Color backgroundColor;
  final Color textColor;
  final String text;
  final BorderRadius borderRadius;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 40,
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius,
            ),
          ),
          child: Text(
            text,
            style: Styles.textStyle16.copyWith(color: textColor),
          ),
        ),
      ),
    );
  }
}
