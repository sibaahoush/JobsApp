import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobsapp/features/home/presentation/views/widget/custom_Container.dart';

import '../../../../../core/utils/assest.dart';

class CompanyListViewItemJob extends StatelessWidget {
  const CompanyListViewItemJob({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage(AssetsData.logo),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const Text('lntegration Specialist '),
                  //SizedBox(width: MediaQuery.of(context).size.width * .2),
                  Padding(
                    padding: const EdgeInsets.only(right: 16, left: 42),
                    child: Text(
                      'May 21 2022',
                      style: TextStyle(color: Colors.black.withOpacity(.5)),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: CustomContainer(
                  icon: FontAwesomeIcons.briefcase,
                  title: 'Employment',
                  text: 'Programming/Informatics engineer'),
            ),
            const Divider(
              indent: 50,
              endIndent: 50,
              color: Colors.grey,
              thickness: .6,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: CustomContainer(
                  icon: FontAwesomeIcons.comment,
                  title: 'Career Level',
                  text: 'Engineer'),
            ),
            const Divider(
              indent: 50,
              endIndent: 50,
              color: Colors.grey,
              thickness: .6,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: CustomContainer(
                  icon: FontAwesomeIcons.hourglass,
                  title: 'type of employment',
                  text: 'Full-time'),
            ),
            const Divider(
              indent: 50,
              endIndent: 50,
              color: Colors.grey,
              thickness: .6,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: CustomContainer(
                  icon: FontAwesomeIcons.medal,
                  title: 'skills',
                  text: ' 2_houre'),
            ),
            const Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Text(
                'Syriatel Mobile Telecom',
                style: TextStyle(fontSize: 12, color: Colors.blueGrey),
              ),
            ),
            const Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: Text(
                'Sahnaya Daraa Highway',
                style: TextStyle(color: Colors.orange),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
