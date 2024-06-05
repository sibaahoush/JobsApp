import 'package:flutter/material.dart';

import '../../../../../core/utils/assest.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
    height: 50,
      //height: MediaQuery.of(context).size.height * .23,
      child: AspectRatio(
        aspectRatio: 2.5 / 4,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(19),
              image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.logo)
                  ),
                  ),
        ),
      ),
    );
  }
}