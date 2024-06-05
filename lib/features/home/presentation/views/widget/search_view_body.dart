import 'package:flutter/material.dart';

import 'custom_search_text_fiald.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
          height: 42,
          //  height: MediaQuery.of(context).size.height * .1,
          width: 450,
          child: CustomSearchTextField()),
    );
    // SizedBox(
    //   height: 16,
    // ),
    // Text(
    //   'Search Result',
    //  // style: Styles.textStyle18,
    // ),
    // SizedBox(
    //   height: 16,
    //),
    // Expanded(child: SearchResultListView())
  }
}
