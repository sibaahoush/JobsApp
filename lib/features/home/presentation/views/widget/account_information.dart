import 'package:flutter/material.dart';
import 'package:jobsapp/core/utils/widget/custom_bottom.dart';
import 'package:jobsapp/features/home/presentation/views/widget/custom_app_bar.dart';
import 'package:jobsapp/features/home/presentation/views/widget/custom_drawar.dart';

import 'custom_text_fiald.dart';

class AccountInformation extends StatelessWidget {
  const AccountInformation({super.key});
  static String id = 'AccountInformation';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(.2),
      drawer: const CustomDrawar(),
      body: const EditForm(),
    );
  }
}

class EditForm extends StatefulWidget {
  const EditForm({
    super.key,
  });

  @override
  State<EditForm> createState() => _EditFormState();
}

class _EditFormState extends State<EditForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const CustomAppBar(),
      const Padding(
        padding: EdgeInsets.all(24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lock,
              size: 20,
              color: Colors.blueGrey,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              'AccountInformation',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
          left: 36,
          right: 36,
          top: 36,
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Phone Number:',
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.blueGrey),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text('0939628523'),
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
                                  title: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'M o b i l e  n u m b e r',
                                          style: TextStyle(
                                              color: Colors.blueGrey,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: CustomTextField(
                                            fillColor:
                                                Colors.grey.withOpacity(.2),
                                            hint: 'Mobile number',
                                            controller: phoneNumberController),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: CustomButton(
                                            backgroundColor: Colors.yellow,
                                            textColor: Colors.blueGrey,
                                            text: 'Save',
                                            onPressed: () {}),
                                      )
                                    ],
                                  )));
                    },
                    child: const Text('Edit'))
              ],
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(36),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Password:',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.blueGrey,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text('********'),
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
                                  title: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'P a s s w o r d',
                                          style: TextStyle(
                                              color: Colors.blueGrey,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: CustomTextField(
                                            fillColor:
                                                Colors.grey.withOpacity(.2),
                                            hint: 'Password',
                                            controller: passwordController),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: CustomButton(
                                            backgroundColor: Colors.yellow,
                                            textColor: Colors.blueGrey,
                                            text: 'Save',
                                            onPressed: () {}),
                                      )
                                    ],
                                  )));
                    },
                    child: Text('Edit'))
              ],
            ),
          ),
        ),
      )
    ]);
  }
}
