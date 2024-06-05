import 'package:flutter/material.dart';

import 'views/widget/register_view_Company_Body.dart';

class RegisterViewCompany extends StatelessWidget {
  const RegisterViewCompany({super.key});
  static String id = 'RegesterViewCompany';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: RegisterViewCompanyBody(),
    );
  }
}
