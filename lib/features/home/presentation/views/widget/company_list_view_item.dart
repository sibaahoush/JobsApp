import 'package:flutter/material.dart';

import '../../../../../core/utils/assest.dart';

class CompanyListViewItem extends StatelessWidget {
  const CompanyListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(AssetsData.employ),
        ),
        SizedBox(
          height: 14,
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Name of compamy',
            style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
