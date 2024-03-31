import 'package:bookly/Feature/home/presentaion/Views/widget/CustomBookCard.dart';
import 'package:bookly/Feature/home/presentaion/Views/widget/RatingWidget.dart';
import 'package:bookly/Feature/home/presentaion/Views/widget/custom_app_bar_details.dart';
import 'package:bookly/core/utils/Style.dart';
import 'package:flutter/material.dart';

class BookDetailsVeiwBody extends StatelessWidget {
  const BookDetailsVeiwBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          const CustomAppBarDetailsBook(),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.25),
              child: const CustomBookCard()),
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
          const SizedBox(
            height: 20,
          ),
          const Padding(
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
          const Expanded(
            child: SizedBox(),
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'you can also like',
              style: Styles.textStyle16,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const SimilarBooksListView(),
        ],
      ),
    );
  }
}

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: CustomBookCard(),
          );
        },
      ),
    );
    ;
  }
}

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
          child: Text(
            text,
            style: Styles.textStyle16.copyWith(color: textColor),
          ),
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius,
            ),
          ),
        ),
      ),
    );
  }
}
