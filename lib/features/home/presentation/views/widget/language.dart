import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobsapp/features/home/presentation/views/widget/custom_text_fiald.dart';

import '../../../../../core/utils/widget/custom_bottom.dart';
import 'custom_app_bar.dart';
import 'custom_drawar.dart';

class Languege extends StatelessWidget {
  const Languege({super.key});
  static String id = 'Languege ';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.withOpacity(.2),
        drawer: const CustomDrawar(),
        body: Column(children: [
          const CustomAppBar(),
          const SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Icon(
              Icons.language,
              color: Colors.blueGrey,
            ),
            const SizedBox(
              width: 8,
            ),
            const Text(
              ' L a n g u a g e s',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey),
            ),
          ]),
          const Text(
            'Adding your Language will incrrease your chances to get the best job',
            style: TextStyle(fontSize: 12, color: Colors.blueGrey),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(8)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Languages'),
                        TextButton(
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
                                          content: SizedBox(
                                            width: 300,
                                            height: 300,
                                            child: Column(
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: Text(
                                                    'L a n g u a g e s',
                                                    style: TextStyle(
                                                        color: Colors.blueGrey,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: ListView.builder(
                                                      itemCount: 5,
                                                      itemBuilder:
                                                          (context, index) {
                                                        return Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  vertical: 4,
                                                                  horizontal:
                                                                      16),
                                                          child: Container(
                                                              decoration: BoxDecoration(
                                                                  border: Border.all(
                                                                      color: Colors
                                                                          .grey),
                                                                  color: Colors
                                                                      .white,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8)),
                                                              child:
                                                                  const Center(
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              8.0),
                                                                  child: Text(
                                                                    'English',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            12,
                                                                        color: Colors
                                                                            .blueGrey),
                                                                  ),
                                                                ),
                                                              )),
                                                        );
                                                      }),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      vertical: 8,
                                                      horizontal: 64),
                                                  child: CustomButton(
                                                      backgroundColor:
                                                          Colors.yellow,
                                                      textColor:
                                                          Colors.blueGrey,
                                                      text: 'Save',
                                                      onPressed: () {}),
                                                )
                                              ],
                                            ),
                                          )));
                            },
                            child: const Text('Edit'))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 128, vertical: 8),
            child: CustomButton(
                onPressed: () {},
                backgroundColor: Colors.yellow,
                textColor: Colors.white,
                text: 'Save'),
          ),
        ]));
  }
}
