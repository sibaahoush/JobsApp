import 'package:flutter/material.dart';

import 'pesentation/views/widget/start_view_body.dart';

class StartView extends StatelessWidget {
  const StartView({super.key});
  static String id = 'StartView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: StartViewBody(),
    );
  }
}
