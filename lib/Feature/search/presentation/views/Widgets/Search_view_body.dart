import 'package:bookly/Feature/search/presentation/views/Widgets/CustomTextField.dart';
import 'package:bookly/Feature/search/presentation/views/Widgets/Search_result_List_view.dart';
import 'package:bookly/core/utils/Style.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(
              hintText: 'search', label: 'search', isPassword: false),
          SizedBox(height: 15),
          Text(
            'search result',
            style: Styles.textStyle16,
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
