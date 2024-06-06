import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobsapp/core/utils/assest.dart';
import 'package:jobsapp/core/utils/widget/custom_bottom.dart';
import 'package:jobsapp/features/auth/pesentation/views/loge_in_view.dart';
import 'package:jobsapp/features/home/presentation/views/home_view.dart';
import 'package:jobsapp/features/home/presentation/views/widget/Work_experianse.dart';
import 'package:jobsapp/features/home/presentation/views/widget/custom_text_fiald.dart';
import 'package:jobsapp/features/home/presentation/views/widget/personal_information.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: RegisterForm(),
    );
  }
}

class RegisterForm extends StatefulWidget {
  const RegisterForm({
    super.key,
  });

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController NameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: ListView(
        children: [
          Image.asset(
            AssetsData.register,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Register',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey),
            ),
          ),
          const Text(
            'Please register to login.',
            style: TextStyle(fontSize: 12, color: Colors.blueGrey),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12, top: 16),
            child: SizedBox(
              child: CustomTextField(
                controller: NameController,
                icon: FontAwesomeIcons.user,
                hint: 'Name',
                fillColor: Colors.grey.withOpacity(.2),
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(left: 12, right: 12, top: 16),
          //   child: SizedBox(
          //     child: CustomTextField(
          //       controller: lastNameController,
          //       icon: FontAwesomeIcons.user,
          //       hint: 'Last Name',
          //       fillColor: Colors.grey.withOpacity(.2),
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.only(left: 12, right: 12, top: 16),
          //   child: SizedBox(
          //     child: CustomTextField(
          //       controller: phoneNumberController,
          //       icon: FontAwesomeIcons.mobile,
          //       hint: 'Phone Number',
          //       fillColor: Colors.grey.withOpacity(.2),
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12, top: 16),
            child: SizedBox(
              child: CustomTextField(
                controller: emailController,
                icon: FontAwesomeIcons.envelope,
                hint: 'Email',
                fillColor: Colors.grey.withOpacity(.2),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12, top: 16),
            child: CustomTextField(
              controller: passwordController,
              icon: FontAwesomeIcons.lockOpen,
              hint: 'password',
              fillColor: Colors.grey.withOpacity(.2),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12, top: 16),
            child: CustomTextField(
              controller: passwordController,
              icon: FontAwesomeIcons.lockOpen,
              hint: 'password Confirmation',
              fillColor: Colors.grey.withOpacity(.2),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, PersonalInformation.id);
                    },
                    child: const Text(
                      'User',
                      style: TextStyle(
                          fontFamily: 'Pacifico',
                          fontSize: 24,
                          color: Colors.blueGrey),
                    )),
                const Text(
                  '_ OR _ ',
                  style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 24,
                      color: Colors.yellowAccent),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, LogeInView.id);
                    },
                    child: const Text(
                      'Company ',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.blueGrey,
                        fontFamily: 'Pacifico',
                      ),
                    )),
              ],
            ),
          ),

          // Padding(
          //   padding: const EdgeInsets.only(
          //     left: 30,
          //     right: 30,
          //   ),
          //   child: CustomButton(
          //       onPressed: () {
          //         if (formkey.currentState!.validate()) {
          //           Navigator.pushNamed(context, HomeView.id);
          //         } else {
          //           autovalidateMode = AutovalidateMode.always;
          //         }
          //       },
          //       backgroundColor: Colors.blueGrey,
          //       textColor: Colors.white,
          //       text: 'Sign Up'),
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Dont have account?',
                style: TextStyle(color: Colors.grey),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, LogeInView.id);
                  },
                  child: const Text(
                    'Sign In',
                    style: TextStyle(color: Colors.blueGrey, fontSize: 18),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
