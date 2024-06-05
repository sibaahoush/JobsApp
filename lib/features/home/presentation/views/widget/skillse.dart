import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobsapp/features/home/presentation/views/widget/custom_text_fiald.dart';

import '../../../../../core/utils/widget/custom_bottom.dart';
import 'custom_app_bar.dart';
import 'custom_drawar.dart';

class skills extends StatelessWidget {
  const skills({super.key});
  static String id = ' skills ';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.withOpacity(.2),
        drawer: const CustomDrawar(),
        body: SkillsForm());
  }
}

class SkillsForm extends StatefulWidget {
  const SkillsForm({
    super.key,
  });

  @override
  State<SkillsForm> createState() => _SkillsFormState();
}

class _SkillsFormState extends State<SkillsForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  TextEditingController jobtitleontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const CustomAppBar(),
      const SizedBox(
        height: 20,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Icon(
          FontAwesomeIcons.brain,
          color: Colors.blueGrey,
        ),
        const SizedBox(
          width: 8,
        ),
        const Text(
          ' S k i l l s',
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey),
        ),
      ]),
      const Text(
        'Adding all skils will increase your chances to get the best job ',
        style: TextStyle(fontSize: 12, color: Colors.blueGrey),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
        child: CustomTextField(
          controller: jobtitleontroller,
          hint: 'Skills',
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
            text: 'Save'),
      ),
    ]);
  }
}
