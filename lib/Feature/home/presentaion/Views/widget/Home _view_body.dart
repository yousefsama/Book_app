import 'package:bookly/Feature/home/presentaion/Views/widget/BestSellerListView.dart';
import 'package:bookly/Feature/home/presentaion/Views/widget/BookCardListView.dart';
import 'package:bookly/Feature/home/presentaion/Views/widget/CustomAppBar.dart';

import 'package:bookly/core/utils/Style.dart';

import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: CustomAppBar(),
            ),
            BookCardListView(),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 30),
              child: Text(
                'Best seller',
                style: Styles.textStyle20,
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ]),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: BestSellerListView(),
          ),
        )
      ],
    );
  }
}
