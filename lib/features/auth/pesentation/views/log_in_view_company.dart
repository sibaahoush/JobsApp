import 'package:flutter/material.dart';

import 'widget/log_in_view_company_Body.dart';

class LogeInViewCompany extends StatelessWidget {
  const LogeInViewCompany({super.key});
  static String id = 'LogeInViewCompany';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LogeInViewBodyCompany(),
    );
  }
}
