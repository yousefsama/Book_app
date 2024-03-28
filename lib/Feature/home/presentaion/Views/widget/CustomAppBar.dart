import 'package:bookly/constance.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 20),
      child: Row(
        children: [
          Image.asset(
            kLogo,
            width: 55,
          ),
          const Spacer(),
          const Icon(Icons.search, size: 24),
        ],
      ),
    );
  }
}
