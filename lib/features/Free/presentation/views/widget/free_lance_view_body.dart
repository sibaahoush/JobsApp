import 'package:flutter/material.dart';
import 'package:jobsapp/features/home/presentation/views/widget/custom_app_bar.dart';

class FreeLanceViewBody extends StatelessWidget {
  const FreeLanceViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Esem alforsa'),
                  Container(
                    padding:
                        const EdgeInsets.only(top: 24, bottom: 24, left: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.grey.withOpacity(.2),
                    ),
                    child: Text(
                      'qwertyuiosdfghjk,mnbvcxsdfghjkiuytrebhjm,mnbvvbjgtfdrtyuytdfghjmnbvcxsdertyhjklmnbvcx',
                      style: TextStyle(fontSize: 12, color: Colors.blueGrey),
                    ),
                  )
                ]),
          ),
        )
      ],
    );
  }
}
