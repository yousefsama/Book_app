import 'package:bookly/Feature/home/presentaion/Views/widget/BookCardListView.dart';
import 'package:bookly/Feature/home/presentaion/Views/widget/CustomAppBar.dart';

import 'package:bookly/core/utils/Style.dart';

import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          BookCardListView(),
          SizedBox(
            height: 30,
          ),
          Text(
            'Best seller',
            style: Style.medium,
            textAlign: TextAlign.left,
          )
        ],
      ),
    );
  }
}
