import 'package:flutter/material.dart';
import 'package:jobsapp/features/home/presentation/views/widget/custom_drawar.dart';
//import 'package:jobsapp/features/info/presentation/views/wigets/info_view_body.dart';

import 'widgit/Info_view_body.dart';

class InfoView extends StatelessWidget {
  const InfoView({super.key});
  static String id = 'InfoView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawar(),
      body: InfoViewBody(),
    );
  }
}
