import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobsapp/features/company/presentation/views/widget/add_job.dart';
import 'package:jobsapp/features/company/presentation/views/widget/company_drawar.dart';
import 'package:jobsapp/features/company/presentation/views/widget/company_list_view_job.dart';
import 'package:jobsapp/features/company/presentation/views/widget/employ_container_item.dart';
import 'package:jobsapp/features/company/presentation/views/widget/employ_list_view.dart';
import 'package:jobsapp/features/home/presentation/views/search_view.dart';
import 'package:jobsapp/features/home/presentation/views/widget/custom_app_bar.dart';

class CompanyHomeView extends StatelessWidget {
  const CompanyHomeView({super.key});
  static String id = 'CompanyHomeView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, AddJob.id);
        },
        backgroundColor: Colors.blueGrey,
        child: const Icon(
          FontAwesomeIcons.plus,
          size: 18,
        ),
      ),
      backgroundColor: Colors.grey.withOpacity(.1),
      drawer: const CompanyDrawar(),
      body: ListView(
        children: [
          CustomAppBar(),
          // SearchView(),
          //  Expanded(child: CompanyListViewJob()),
          EmployListView()
        ],
      ),
    );
  }
}
