import 'package:flutter/material.dart';
import 'package:jobsapp/features/auth/pesentation/views/loge_in_view.dart';
import 'package:jobsapp/features/auth/pesentation/views/register_view.dart';
import 'package:jobsapp/features/auth/start_view.dart';
import 'package:jobsapp/features/company/presentation/views/copany_home_view.dart';
import 'package:jobsapp/features/company/presentation/views/widget/add_job.dart';
import 'package:jobsapp/features/company/presentation/views/widget/company_account_information.dart';
import 'package:jobsapp/features/home/presentation/views/all_jobs_view.dart';
import 'package:jobsapp/features/home/presentation/views/widget/account_information.dart';
import 'package:jobsapp/features/home/presentation/views/widget/add_certificate_view_body.dart';
import 'package:jobsapp/features/home/presentation/views/widget/language.dart';
import 'package:jobsapp/features/home/presentation/views/widget/personal_information.dart';
import 'package:jobsapp/features/home/presentation/views/widget/Work_experianse.dart';
import 'package:jobsapp/features/home/presentation/views/widget/skillse.dart';
import 'package:jobsapp/features/info/presentation/views/info_view.dart';
import 'features/Free/presentation/views/home_page.dart';
import 'features/Free/presentation/views/widget/add_page.dart';
import 'features/Free/presentation/views/widget/balance.dart';
import 'features/Free/presentation/views/widget/information_job.dart';
import 'features/Free/presentation/views/widget/searcher_page.dart';
import 'features/auth/pesentation/register_view_company.dart';
import 'features/auth/pesentation/views/log_in_view_company.dart';
import 'features/home/presentation/views/home_view.dart';

void main() {
  runApp(const JobsApp());
}

class JobsApp extends StatelessWidget {
  const JobsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          HomeView.id: (context) => HomeView(),
          AddCiertificateViewBody.id: (context) => AddCiertificateViewBody(),
          PersonalInformation.id: (context) => PersonalInformation(),
          InfoView.id: (context) => InfoView(),
          AccountInformation.id: (context) => AccountInformation(),
          Registerview.id: (context) => Registerview(),
          LogeInView.id: (context) => LogeInView(),
          StartView.id: (context) => StartView(),
          RegisterViewCompany.id: (context) => RegisterViewCompany(),
          LogeInViewCompany.id: (context) => LogeInViewCompany(),
          AllJobsView.id: (context) => AllJobsView(),
          WorkExperience.id: (context) => WorkExperience(),
          Languege.id: (context) => Languege(),
          skills.id: (context) => skills(),
          AddJob.id: (context) => AddJob(),
          CompanyAccountInformation.id: (context) =>
              CompanyAccountInformation(),
          CompanyHomeView.id: (context) => CompanyHomeView(),
          HomePage.id: (context) => HomePage(),
          AddPage.id: (context) => AddPage(),
          BalancePage.id: (context) => BalancePage(),
          InformationJob.id: (context) => InformationJob(),
          SearcherPage.id: (context) => SearcherPage(),
        },
        initialRoute: Registerview.id);
  }
}
