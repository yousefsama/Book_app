import 'package:bookly/constance.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          kLogo,
        ),
        const Text(
          "read Books for free :)",
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
