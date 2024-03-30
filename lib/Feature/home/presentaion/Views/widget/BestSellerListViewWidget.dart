import 'package:bookly/Feature/home/presentaion/Views/widget/RatingWidget.dart';
import 'package:bookly/core/utils/Style.dart';
import 'package:flutter/material.dart';

class BestSellerListViewWidget extends StatelessWidget {
  const BestSellerListViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.15,
        width: double.infinity,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 70 / 105,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('Assets/images/Book 1 High.jpeg'),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Harry Potter and the Goblet of Fire',
                      style: Styles.textStyle20,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'J.K. Rowling',
                    style: Styles.textStyle14,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            '€19.99',
                            style: Styles.textStyle20,
                          ),
                          Spacer(),
                          RatingWidget()
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
