import 'package:flutter/material.dart';
import 'package:jobsapp/features/home/presentation/views/widget/company_list_view_item.dart';

class CompanyListView extends StatelessWidget {
  const CompanyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .1,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: const FittedBox(
                  fit: BoxFit.scaleDown, child: CompanyListViewItem()),
            );
          }),
    );
  }
}
