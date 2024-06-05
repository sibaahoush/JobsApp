import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobsapp/features/auth/pesentation/views/log_in_view_company.dart';

import '../../../../../core/utils/assest.dart';
import '../../../../../core/utils/widget/custom_bottom.dart';
import '../../../../home/presentation/views/widget/custom_text_fiald.dart';

class RegisterViewCompanyBody extends StatelessWidget {
  const RegisterViewCompanyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: RegisterCompanyForm(),
    );
  }
}

class RegisterCompanyForm extends StatefulWidget {
  const RegisterCompanyForm({
    super.key,
  });

  @override
  State<RegisterCompanyForm> createState() => _RegisterCompanyFormState();
}

class _RegisterCompanyFormState extends State<RegisterCompanyForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController landNumberController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  String? location, landNumber, password, phoneNumber, email, description;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image.asset(
          AssetsData.registercompany,
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
              controller: phoneNumberController,
              icon: FontAwesomeIcons.mobile,
              hint: 'Phone_Number',
              fillColor: Colors.grey.withOpacity(.2),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12, right: 12, top: 16),
          child: SizedBox(
            child: CustomTextField(
              controller: landNumberController,
              icon: FontAwesomeIcons.phone,
              hint: 'Land_Number',
              fillColor: Colors.grey.withOpacity(.2),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12, right: 12, top: 16),
          child: SizedBox(
            child: CustomTextField(
              controller: descriptionController,
              icon: FontAwesomeIcons.building,
              hint: 'description',
              fillColor: Colors.grey.withOpacity(.2),
            ),
          ),
        ),
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
            controller: locationController,
            icon: FontAwesomeIcons.locationDot,
            hint: 'location',
            fillColor: Colors.grey.withOpacity(.2),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 30,
            right: 30,
            top: 36,
          ),
          child: CustomButton(
              onPressed: () {},
              backgroundColor: Colors.blueGrey,
              textColor: Colors.white,
              text: 'Sign Up'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Dont have account?',
              style: TextStyle(color: Colors.grey),
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, LogeInViewCompany.id);
                },
                child: const Text(
                  'Sign In',
                  style: TextStyle(color: Colors.blueGrey, fontSize: 18),
                ))
          ],
        )
      ],
    );
  }
}
