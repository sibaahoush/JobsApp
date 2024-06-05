import 'package:flutter/material.dart';

import '../../../../../core/utils/widget/custom_bottom.dart';
import '../../../../home/presentation/views/Add_certificate_view.dart';

class CustomShowDialog extends StatelessWidget {
  const CustomShowDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 96),
      child: CustomButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('close'))
                        ],
                        title: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(12),
                              child: Text(
                                'Comolete your profile to apply for this job',
                                style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            CustomButton(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(8)),
                                backgroundColor: Colors.blue,
                                textColor: Colors.white,
                                text: ' Complete education levels',
                                onPressed: () {
                                  // Navigator.pushNamed(
                                  //     context, AddCiertificateView.id);
                                }),
                            const SizedBox(
                              height: 12,
                            ),
                            CustomButton(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(8)),
                                backgroundColor: Colors.blue,
                                textColor: Colors.white,
                                text: ' Complete work experience',
                                onPressed: () {}),
                          ],
                        )));
          },
          backgroundColor: Colors.yellowAccent,
          textColor: Colors.white,
          text: 'Tacdeem'),
    );
  }
}
