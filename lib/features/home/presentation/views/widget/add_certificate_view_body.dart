import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobsapp/features/home/presentation/views/widget/custom_app_bar.dart';
import 'package:jobsapp/features/home/presentation/views/widget/custom_text_fiald.dart';

import '../../../../../core/utils/widget/custom_bottom.dart';
import 'custom_drawar.dart';

class AddCiertificateViewBody extends StatelessWidget {
  const AddCiertificateViewBody({super.key});
  static String id = 'AddCiertificateViewBody ';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.withOpacity(.2),
        drawer: const CustomDrawar(),
        body: const EducationForm());
  }
}

class EducationForm extends StatefulWidget {
  const EducationForm({
    super.key,
  });

  @override
  State<EducationForm> createState() => _EducationFormState();
}

class _EducationFormState extends State<EducationForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  TextEditingController studyfieldController = TextEditingController();
  TextEditingController universityController = TextEditingController();
  TextEditingController gradeController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  String dropdownvalue = 'High School';
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const CustomAppBar(),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                FontAwesomeIcons.medal,
                color: Colors.blueGrey,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'A d d  C e r t i f i c a t e',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
            child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Academy qualification',
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                      DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                            dropdownColor: Colors.white,
                            value: dropdownvalue,
                            icon: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                FontAwesomeIcons.chevronDown,
                                color: Colors.blueGrey,
                                size: 12,
                              ),
                            ),
                            style: const TextStyle(color: Colors.blueGrey),
                            items: const [
                              DropdownMenuItem<String>(
                                  value: "High School",
                                  child: Text(
                                    'High School',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.blueGrey),
                                  )),
                              DropdownMenuItem<String>(
                                  value: "Bachelor Degree",
                                  child: Text('Bachelor Degree',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.blueGrey))),
                              DropdownMenuItem<String>(
                                  value: "Diploma",
                                  child: Text(
                                    'Diploma',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.blueGrey),
                                  )),
                              DropdownMenuItem<String>(
                                  value: "Master",
                                  child: Text(
                                    'Master',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.blueGrey),
                                  )),
                              DropdownMenuItem<String>(
                                  value: "PHD",
                                  child: Text(
                                    'PHD',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.blueGrey),
                                  )),
                            ],
                            onChanged: (value) {
                              setState(() {
                                dropdownvalue = value!;
                              });
                            }),
                      ),
                    ],
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
            child: CustomTextField(
              controller: studyfieldController,
              hint: ' Study field',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
            child: CustomTextField(
              controller: universityController,
              hint: 'University or institution',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
            child: CustomTextField(
              controller: gradeController,
              hint: 'Grade',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
            child: CustomButton(
                onPressed: () {
                  if (formkey.currentState!.validate()) {
                    // Navigator.pushNamed(context, HomeView.id);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                  }
                },
                backgroundColor: Colors.yellow,
                textColor: Colors.white,
                text: 'Add +'),
          ),
        ],
      ),
    );
  }
}
