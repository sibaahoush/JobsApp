import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'company_account_information.dart';

class CompanyDrawar extends StatelessWidget {
  const CompanyDrawar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blueGrey,
          ),
          child: Text('Company'),
        ),
        ExpansionTile(
          title: const Row(
            children: [
              Icon(
                FontAwesomeIcons.info,
                size: 24,
                color: Colors.blueGrey,
              ),
              Text("Basic Information"),
            ],
          ),
          children: [
            ListTile(
              leading: const Opacity(
                opacity: 0.5,
                child: Icon(
                  Icons.lock,
                  size: 20,
                  color: Colors.blueGrey,
                ),
              ),
              title: const Text(' Account information'),
              onTap: () {
                Navigator.pushNamed(context, CompanyAccountInformation.id);
              },
            ),
            ListTile(
              leading: const Opacity(
                opacity: 0.5,
                child: Icon(
                  // FontAwesomeIcons.fileSignature,
                  Icons.person,
                  size: 20,
                  color: Colors.blueGrey,
                ),
              ),
              title: const Text('Personal information'),
              onTap: () {},
            ),
            ListTile(
              leading: const Opacity(
                opacity: 0.5,
                child: Icon(
                  FontAwesomeIcons.bookmark,
                  size: 20,
                  color: Colors.blueGrey,
                ),
              ),
              title: const Text('Portfolio'),
              onTap: () {},
            ),
            ListTile(
              leading: const Opacity(
                opacity: 0.5,
                child: Icon(
                  FontAwesomeIcons.camera,
                  size: 20,
                  color: Colors.blueGrey,
                ),
              ),
              title: const Text('Upload Image'),
              onTap: () {},
            ),
          ],
        ),
        ExpansionTile(
          title: const Row(
            children: [
              Icon(
                FontAwesomeIcons.scroll,
                size: 24,
                color: Colors.blueGrey,
              ),
              SizedBox(
                width: 16,
              ),
              Text("skills"),
            ],
          ),
          children: [
            ListTile(
              leading: const Opacity(
                opacity: 0.5,
                child: Icon(
                  FontAwesomeIcons.graduationCap,
                  size: 20,
                  color: Colors.blueGrey,
                ),
              ),
              title: const Text('alshahada'),
              onTap: () {},
            ),
            ListTile(
              leading: const Opacity(
                opacity: 0.5,
                child: Icon(
                  // FontAwesomeIcons.fileSignature,
                  FontAwesomeIcons.medal,
                  size: 20,
                  color: Colors.blueGrey,
                ),
              ),
              title: const Text('Experience'),
              onTap: () {},
            ),
            ListTile(
              leading: const Opacity(
                opacity: 0.5,
                child: Icon(
                  Icons.language,
                  size: 20,
                  color: Colors.blueGrey,
                ),
              ),
              title: const Text('language'),
              onTap: () {},
            ),
            ListTile(
              leading: const Opacity(
                opacity: 0.5,
                child: Icon(
                  FontAwesomeIcons.brain,
                  size: 20,
                  color: Colors.blueGrey,
                ),
              ),
              title: const Text('Skills'),
              onTap: () {},
            ),
            ListTile(
              leading: const Opacity(
                opacity: 0.5,
                child: Icon(
                  FontAwesomeIcons.file,
                  size: 20,
                  color: Colors.blueGrey,
                ),
              ),
              title: const Text('cv'),
              onTap: () {},
            ),
          ],
        ),
        ListTile(
          leading: const Icon(
            FontAwesomeIcons.circleExclamation,
            size: 22,
            color: Colors.blueGrey,
          ),
          title: const Text('Required Jops'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(
            FontAwesomeIcons.briefcase,
            size: 22,
            color: Colors.blueGrey,
          ),
          title: const Text('Advanced opportunities'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(
            FontAwesomeIcons.gear,
            size: 22,
            color: Colors.blueGrey,
          ),
          title: const Text('Settings'),
          onTap: () {},
        ),
      ]),
    );
  }
}
