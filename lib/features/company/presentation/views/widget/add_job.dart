import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobsapp/core/utils/widget/custom_bottom.dart';
import 'package:jobsapp/features/company/presentation/views/widget/company_drawar.dart';
import 'package:jobsapp/features/home/presentation/views/widget/custom_app_bar.dart';

import '../../../../home/presentation/views/home_view.dart';
import '../../../../home/presentation/views/widget/custom_text_fiald.dart';

class AddJob extends StatefulWidget {
  const AddJob({super.key});
  static String id = 'AddJob';

  @override
  State<AddJob> createState() => _AddJobState();
}

class _AddJobState extends State<AddJob> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  TextEditingController egeController = TextEditingController();
  TextEditingController educationController = TextEditingController();
  TextEditingController typeController = TextEditingController();
  TextEditingController skillController = TextEditingController();
  TextEditingController languegeController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Scaffold(
        drawer: CompanyDrawar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: ListView(
            children: [
              const CustomAppBar(),
              const SizedBox(
                height: 16,
              ),
              Container(
                padding: const EdgeInsets.only(top: 24, left: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'lntegration Specialist ',
                        style: TextStyle(color: Colors.yellowAccent),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: CustomTextField(
                          fillColor: Colors.grey.withOpacity(.1),
                          controller: egeController,
                          hint: 'Ege',
                          icon: FontAwesomeIcons.calendarDays,
                        ),
                      ),
                      const Divider(
                        indent: 50,
                        endIndent: 50,
                        color: Colors.grey,
                        thickness: .6,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: CustomTextField(
                          fillColor: Colors.grey.withOpacity(.1),
                          icon: FontAwesomeIcons.graduationCap,
                          hint: 'Education',
                          controller: educationController,
                        ),
                      ),
                      const Divider(
                        indent: 50,
                        endIndent: 50,
                        color: Colors.grey,
                        thickness: .6,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: CustomTextField(
                            fillColor: Colors.grey.withOpacity(.1),
                            icon: FontAwesomeIcons.hourglass,
                            hint: 'type of employment',
                            controller: typeController),
                      ),
                      const Divider(
                        indent: 50,
                        endIndent: 50,
                        color: Colors.grey,
                        thickness: .6,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: CustomTextField(
                            fillColor: Colors.grey.withOpacity(.1),
                            icon: FontAwesomeIcons.medal,
                            hint: 'skills',
                            controller: skillController),
                      ),
                      const Divider(
                        indent: 50,
                        endIndent: 50,
                        color: Colors.grey,
                        thickness: .6,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: CustomTextField(
                            fillColor: Colors.grey.withOpacity(.1),
                            icon: Icons.language_sharp,
                            hint: 'Languege',
                            controller: languegeController),
                      ),
                      const Divider(
                        indent: 50,
                        endIndent: 50,
                        color: Colors.grey,
                        thickness: .6,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
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
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'About the job',
                          style: TextStyle(color: Colors.yellowAccent),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        CustomTextField(
                            fillColor: Colors.grey.withOpacity(.2),
                            max: 8,
                            hint: 'Write',
                            controller: textController)
                      ],
                    ),
                  )),
              const SizedBox(
                height: 16,
              ),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          're',
                          style: TextStyle(color: Colors.yellowAccent),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        CustomTextField(
                            fillColor: Colors.grey.withOpacity(.2),
                            max: 8,
                            hint: 'Write',
                            controller: textController)
                      ],
                    ),
                  )),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomButton(
                  backgroundColor: Colors.yellow,
                  textColor: Colors.blueGrey,
                  text: 'Save',
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      Navigator.pushNamed(context, HomeView.id);
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
