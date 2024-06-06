import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobsapp/features/home/presentation/views/widget/custom_app_bar.dart';
import 'package:jobsapp/features/home/presentation/views/widget/custom_drawar.dart';
import 'package:jobsapp/features/home/presentation/views/widget/custom_text_fiald.dart';

import '../../../../../core/utils/widget/custom_bottom.dart';

class PersonalInformation extends StatelessWidget {
  const PersonalInformation({super.key});
  static String id = 'PersonalInformation ';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(.2),
      drawer: const CustomDrawar(),
      body: const PersonalInfoForm(),
    );
  }
}

class PersonalInfoForm extends StatefulWidget {
  const PersonalInfoForm({
    super.key,
  });

  @override
  State<PersonalInfoForm> createState() => _PersonalInfoFormState();
}

class _PersonalInfoFormState extends State<PersonalInfoForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const CustomAppBar(),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.person,
                  size: 20,
                  color: Colors.blueGrey,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'P e r s o n a l  I n f o r m a t i o n',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey),
                )
              ],
            ),
          ),
          const Text(
            'Adding your personal information is very important',
            style: TextStyle(fontSize: 12, color: Colors.blueGrey),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            child: CustomTextField(
                controller: firstNameController,
                icon: FontAwesomeIcons.user,
                hint: 'First Name'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
            child: CustomTextField(
                controller: lastNameController,
                icon: FontAwesomeIcons.user,
                hint: 'Last Name'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
            child: CustomTextField(
              controller: phoneNumberController,
              icon: FontAwesomeIcons.mobile,
              hint: 'Home address',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
            child: CustomTextField(
              controller: emailController,
              icon: FontAwesomeIcons.envelope,
              hint: 'Email',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
            child: CustomTextField(
              controller: passwordController,
              icon: FontAwesomeIcons.lockOpen,
              hint: 'city',
            ),
          ),
          const Contianerbuttom(),
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
                text: 'follow'),
          ),
        ],
      ),
    );
  }
}

class Contianerbuttom extends StatefulWidget {
  const Contianerbuttom({super.key});

  @override
  State<Contianerbuttom> createState() => _ContianerbuttomState();
}

class _ContianerbuttomState extends State<Contianerbuttom> {
  String dropdownvalue = "Syrian";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
      child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Nationlity',
                  style: TextStyle(color: Colors.blueGrey),
                ),
                DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                      // underline:
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
                            value: "Syrian",
                            child: Text(
                              'Syrian',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blueGrey),
                            )),
                        DropdownMenuItem<String>(
                            value: "Palestinian",
                            child: Text('Palestinian',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.blueGrey))),
                        DropdownMenuItem<String>(
                            value: "Iraqian",
                            child: Text(
                              'Iraqian',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blueGrey),
                            )),
                        DropdownMenuItem<String>(
                            value: "Other",
                            child: Text(
                              'Other',
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
    );
  }
}
