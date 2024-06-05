import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'job_list_view.dart';

class AllJobsViewBody extends StatelessWidget {
  const AllJobsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        Expanded(child: JobslistView()),
      ],
    );
  }
}
