import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/widget/custom_bottom.dart';
import 'custom_app_bar.dart';
import 'custom_drawar.dart';
import 'custom_text_fiald.dart';

class WorkExperience extends StatelessWidget {
  const WorkExperience({super.key});
  static String id = 'WorkExperience ';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.withOpacity(.2),
        drawer: const CustomDrawar(),
        body: const WorkExperienceForm());
  }
}

class WorkExperienceForm extends StatefulWidget {
  const WorkExperienceForm({
    super.key,
  });

  @override
  State<WorkExperienceForm> createState() => _WorkExperienceFormState();
}

class _WorkExperienceFormState extends State<WorkExperienceForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  TextEditingController jobtitleontroller = TextEditingController();
  TextEditingController companyController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const CustomAppBar(),
          const SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Icon(
              FontAwesomeIcons.medal,
              color: Colors.blueGrey,
            ),
            const SizedBox(
              width: 8,
            ),
            const Text(
              ' W o r k  E x p e r i e n c  e',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
            child: CustomTextField(
              controller: jobtitleontroller,
              hint: 'Job title',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
            child: CustomTextField(
              controller: companyController,
              hint: 'Company',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
            child: CustomTextField(
              controller: descriptionController,
              hint: 'Description',
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
