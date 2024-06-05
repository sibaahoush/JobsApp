import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobsapp/features/home/presentation/views/widget/custom_text_fiald.dart';

class CompanyJobDetailsContainer extends StatelessWidget {
  const CompanyJobDetailsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 24, left: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        child: JobDetialsForm());
  }
}

class JobDetialsForm extends StatefulWidget {
  const JobDetialsForm({
    super.key,
  });

  @override
  State<JobDetialsForm> createState() => _JobDetialsFormState();
}

class _JobDetialsFormState extends State<JobDetialsForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  TextEditingController egeController = TextEditingController();
  TextEditingController educationController = TextEditingController();
  TextEditingController typeController = TextEditingController();
  TextEditingController skillController = TextEditingController();
  TextEditingController languegeController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'lntegration Specialist ',
          style: TextStyle(color: Colors.yellowAccent),
        ),
        SizedBox(
          height: 16,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: CustomTextField(
            fillColor: Colors.grey.withOpacity(.1),
            controller: egeController,
            hint: 'Ege',
            icon: FontAwesomeIcons.calendarDays,
          ),
        ),
        Divider(
          indent: 50,
          endIndent: 50,
          color: Colors.grey,
          thickness: .6,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: CustomTextField(
            fillColor: Colors.grey.withOpacity(.1),
            icon: FontAwesomeIcons.graduationCap,
            hint: 'Education',
            controller: educationController,
          ),
        ),
        Divider(
          indent: 50,
          endIndent: 50,
          color: Colors.grey,
          thickness: .6,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: CustomTextField(
              fillColor: Colors.grey.withOpacity(.1),
              icon: FontAwesomeIcons.hourglass,
              hint: 'type of employment',
              controller: typeController),
        ),
        Divider(
          indent: 50,
          endIndent: 50,
          color: Colors.grey,
          thickness: .6,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: CustomTextField(
              fillColor: Colors.grey.withOpacity(.1),
              icon: FontAwesomeIcons.medal,
              hint: 'skills',
              controller: skillController),
        ),
        Divider(
          indent: 50,
          endIndent: 50,
          color: Colors.grey,
          thickness: .6,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: CustomTextField(
              fillColor: Colors.grey.withOpacity(.1),
              icon: Icons.language_sharp,
              hint: 'Languege',
              controller: languegeController),
        ),
        Divider(
          indent: 50,
          endIndent: 50,
          color: Colors.grey,
          thickness: .6,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: CustomTextField(
              fillColor: Colors.grey.withOpacity(.1),
              icon: FontAwesomeIcons.medal,
              hint: 'Gender',
              controller: genderController),
        ),
        // Padding(
        //   padding: EdgeInsets.symmetric(vertical: 2),
        //   child: Center(
        //     child: Text(
        //       'Sahnaya Daraa Highway',
        //       style: TextStyle(color: Colors.orange),
        //     ),
        //   ),
        //)
      ]),
    );
  }
}
