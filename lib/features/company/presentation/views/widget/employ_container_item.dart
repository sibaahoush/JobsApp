import 'package:flutter/material.dart';

import '../../../../../core/utils/assest.dart';
import '../../../../../core/utils/widget/custom_bottom.dart';
import '../../../../home/presentation/views/widget/custom_text_fiald.dart';

class EmployContainerItem extends StatelessWidget {
  const EmployContainerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 32,
                backgroundImage: AssetImage(AssetsData.logo),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Text(
                      'N a m e',
                      style: TextStyle(
                          color: Colors.blueGrey, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      '21/May/2024',
                      style: TextStyle(
                          color: Colors.blueGrey, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
              ),
              InvitationForm()
            ],
          ),
        ),
      ),
    );
  }
}

class InvitationForm extends StatefulWidget {
  const InvitationForm({
    super.key,
  });

  @override
  State<InvitationForm> createState() => _InvitationFormState();
}

class _InvitationFormState extends State<InvitationForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  TextEditingController adressController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
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
                                  'S e n d I n v i t a t i o n',
                                  style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CustomTextField(
                                    fillColor: Colors.grey.withOpacity(.2),
                                    hint: 'Address',
                                    controller: adressController),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CustomTextField(
                                    fillColor: Colors.grey.withOpacity(.2),
                                    hint: 'Time',
                                    controller: timeController),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CustomButton(
                                    backgroundColor: Colors.yellow,
                                    textColor: Colors.blueGrey,
                                    text: 'Send',
                                    onPressed: () {}),
                              )
                            ],
                          )));
            },
            icon: Icon(
              Icons.check,
              color: Colors.blueGrey,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.delete,
              color: Colors.blueGrey,
            ))
      ],
    );
  }
}
