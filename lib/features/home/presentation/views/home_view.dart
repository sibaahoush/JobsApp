import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobsapp/features/home/presentation/views/Add_certificate_view.dart';
import 'package:jobsapp/features/home/presentation/views/widget/custom_drawar.dart';
import 'package:jobsapp/features/home/presentation/views/widget/custom_nav_buttom.dart';
import 'widget/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'HomeView ';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            //  Navigator.pushNamed(context, AddCiertificateView.id);
          },
          backgroundColor: Colors.blueGrey,
          child: const Icon(
            FontAwesomeIcons.graduationCap,
            size: 18,
          ),
        ),
        backgroundColor: Colors.grey.withOpacity(.2),
        drawer: const CustomDrawar(),
        bottomNavigationBar: CustomNavButtom(),
        body: const HomeViewBody());
  }
}
