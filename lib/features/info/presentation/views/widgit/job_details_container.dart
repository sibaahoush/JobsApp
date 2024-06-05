import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../home/presentation/views/widget/custom_Container.dart';

class JobDetailsContainer extends StatelessWidget {
  const JobDetailsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 24, left: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'lntegration Specialist ',
                style: TextStyle(color: Colors.yellowAccent),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: CustomContainer(
                    icon: FontAwesomeIcons.calendarDays,
                    title: 'age',
                    text: ' 28'),
              ),
              Divider(
                indent: 50,
                endIndent: 50,
                color: Colors.grey,
                thickness: .6,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: CustomContainer(
                    icon: FontAwesomeIcons.graduationCap,
                    title: 'Education',
                    text: 'Engineer'),
              ),
              Divider(
                indent: 50,
                endIndent: 50,
                color: Colors.grey,
                thickness: .6,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: CustomContainer(
                    icon: FontAwesomeIcons.hourglass,
                    title: 'type of employment',
                    text: 'Full-time'),
              ),
              Divider(
                indent: 50,
                endIndent: 50,
                color: Colors.grey,
                thickness: .6,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: CustomContainer(
                    icon: FontAwesomeIcons.medal,
                    title: 'skills',
                    text: ' 2_houre'),
              ),
              Divider(
                indent: 50,
                endIndent: 50,
                color: Colors.grey,
                thickness: .6,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: CustomContainer(
                    icon: Icons.language_sharp,
                    title: 'Languege',
                    text: ' english'),
              ),
              Divider(
                indent: 50,
                endIndent: 50,
                color: Colors.grey,
                thickness: .6,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: CustomContainer(
                    icon: FontAwesomeIcons.medal,
                    title: 'Gender',
                    text: ' No Preference'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2),
                child: Center(
                  child: Text(
                    'Sahnaya Daraa Highway',
                    style: TextStyle(color: Colors.orange),
                  ),
                ),
              )
            ]));
  }
}
