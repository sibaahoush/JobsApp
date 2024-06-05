import 'package:flutter/material.dart';
import 'package:jobsapp/features/auth/pesentation/views/widget/register_view_body.dart';

class Registerview extends StatelessWidget {
  const Registerview({super.key});
  static String id = 'Registerview';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.white, body: RegisterViewBody());
  }
}
