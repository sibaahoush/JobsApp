import 'package:flutter/material.dart';
import 'package:jobsapp/features/home/presentation/views/widget/custom_app_bar.dart';
import 'job_list_view.dart';
import 'search_view_body.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        SizedBox(
          height: 8,
        ),
        //  SearchViewBody(),
        Expanded(child: JobslistView()),
      ],
    );
  }
}
