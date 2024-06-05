import 'package:flutter/material.dart';

import 'widget/add_certificate_view_body.dart';

class AddCiertificateView extends StatelessWidget {
  const AddCiertificateView({super.key});
  static String id = 'AddCiertificateView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(.2),
      body: AddCiertificateViewBody(),
    );
  }
}
