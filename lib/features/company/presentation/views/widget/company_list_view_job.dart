import 'package:flutter/material.dart';

import 'company_list_view_item_job.dart';

class CompanyListViewJob extends StatelessWidget {
  const CompanyListViewJob({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 5,
        // itemCount: state is NotescubitSuccess ? state.notes.length:0,
        itemBuilder: (context, index) {
          return const Padding(
              padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
              child: CompanyListViewItemJob());
        });
  }
}
