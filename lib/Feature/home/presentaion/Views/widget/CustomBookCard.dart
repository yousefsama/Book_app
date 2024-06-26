import 'package:flutter/material.dart';

class CustomBookCard extends StatelessWidget {
  const CustomBookCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 165 / 225,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('Assets/images/Book 1 High.jpeg'),
          ),
        ),
      ),
    );
  }
}
