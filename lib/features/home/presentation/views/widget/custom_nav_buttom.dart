import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNavButtom extends StatelessWidget {
  const CustomNavButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      backgroundColor: Colors.white,
      destinations: const [
        NavigationDestination(
            icon: Icon(
              Icons.person_2_outlined,
              color: Colors.blueGrey,
            ),
            label: 'Your Cv'),
        NavigationDestination(
            icon: Icon(Icons.favorite, color: Colors.blueGrey),
            label: 'Favorite'),
        NavigationDestination(
            icon: Icon(
              Icons.house_rounded,
              color: Colors.blueGrey,
            ),
            label: 'My job'),
        NavigationDestination(
            icon: Icon(
              FontAwesomeIcons.briefcase,
              color: Colors.blueGrey,
            ),
            label: 'All job'),
        NavigationDestination(
            icon: Icon(
              Icons.settings,
              color: Colors.blueGrey,
            ),
            label: 'Sttings'),
      ],
      // selectedIndex: currentPageIndex,
      // onDestinationSelected: (int index) {
      //   setState(() {
      //     currentPageIndex = index;
      //   });
      // },
    );
  }
}
