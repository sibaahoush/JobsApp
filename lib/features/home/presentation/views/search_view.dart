import 'package:flutter/material.dart';
import 'package:jobsapp/features/home/presentation/views/widget/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.withOpacity(.2), body: SearchViewBody());
  }
}
