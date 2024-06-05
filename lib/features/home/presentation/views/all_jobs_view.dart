import 'package:flutter/material.dart';
import 'package:jobsapp/features/home/presentation/views/widget/company_list_view.dart';
import 'package:jobsapp/features/home/presentation/views/widget/custom_app_bar.dart';
import 'package:jobsapp/features/home/presentation/views/widget/custom_drawar.dart';
import 'package:jobsapp/features/home/presentation/views/widget/custom_nav_buttom.dart';
import 'package:jobsapp/features/home/presentation/views/widget/job_list_view.dart';
import 'package:jobsapp/features/home/presentation/views/widget/search_view_body.dart';

class AllJobsView extends StatelessWidget {
  const AllJobsView({super.key});
  static String id = 'AllJobsView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.withOpacity(.2),
        drawer: const CustomDrawar(),
        bottomNavigationBar: const CustomNavButtom(),
        body: const Column(
          children: [
            CustomAppBar(),
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: SearchViewBody(),
                    ),
                  ),
                  SliverToBoxAdapter(child: CompanyListView()),
                  SliverToBoxAdapter(child: JobslistView()),
                ],
              ),
            ),
          ],
        ));
  }
}
