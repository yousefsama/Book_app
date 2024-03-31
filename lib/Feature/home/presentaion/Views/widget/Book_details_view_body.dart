import 'package:bookly/Feature/home/presentaion/Views/widget/CustomBookCard.dart';
import 'package:bookly/Feature/home/presentaion/Views/widget/RatingWidget.dart';
import 'package:bookly/Feature/home/presentaion/Views/widget/custom_app_bar_details.dart';
import 'package:bookly/Feature/home/presentaion/Views/widget/custom_button.dart';
import 'package:bookly/Feature/home/presentaion/Views/widget/similar_books_listview.dart';
import 'package:bookly/core/utils/Style.dart';
import 'package:flutter/material.dart';

class BookDetailsVeiwBody extends StatelessWidget {
  const BookDetailsVeiwBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                CustomAppBarDetailsBook(),
                SizedBox(
                  height: 30,
                ),
                BookDetails(),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      CustomButton(
                          backgroundColor: Colors.white,
                          text: "199@",
                          textColor: Colors.black,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              bottomLeft: Radius.circular(12))),
                      CustomButton(
                          backgroundColor: Colors.amber,
                          text: "free preview",
                          textColor: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(12),
                              bottomRight: Radius.circular(12))),
                    ],
                  ),
                ),
                Expanded(child: SizedBox()),
                SimilarBooksBody(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class SimilarBooksBody extends StatelessWidget {
  const SimilarBooksBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'you can also like',
            style: Styles.textStyle16,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SimilarBooksListView(),
      ],
    );
  }
}

class BookDetails extends StatelessWidget {
  const BookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.25),
          child: const CustomBookCard(),
        ),
        const Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        const Opacity(
          opacity: 0.6,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18,
          ),
        ),
        const SizedBox(height: 18),
        const RatingWidget(
          alignment: MainAxisAlignment.center,
        ),
      ],
    );
  }
}
