import 'package:flutter/material.dart';
import 'package:jobsapp/features/auth/pesentation/views/widget/loge_in_view_body.dart';

class LogeInView extends StatelessWidget {
  const LogeInView({super.key});
  static String id = 'LogeInView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.white, body: LogeInViewbody());
    ;
  }
}
