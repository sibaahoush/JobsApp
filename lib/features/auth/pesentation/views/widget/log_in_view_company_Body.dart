import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobsapp/features/auth/pesentation/register_view_company.dart';

import '../../../../../core/utils/assest.dart';
import '../../../../../core/utils/widget/custom_bottom.dart';
import '../../../../home/presentation/views/widget/custom_text_fiald.dart';

class LogeInViewBodyCompany extends StatelessWidget {
  const LogeInViewBodyCompany({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: LogeinFormCompany(),
    );
  }
}

class LogeinFormCompany extends StatefulWidget {
  const LogeinFormCompany({
    super.key,
  });

  @override
  State<LogeinFormCompany> createState() => _LogeinFormCompanyState();
}

class _LogeinFormCompanyState extends State<LogeinFormCompany> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image.asset(
          AssetsData.logein,
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Login',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey),
          ),
        ),
        const Text(
          'Please Sin in to continue.',
          style: TextStyle(fontSize: 12, color: Colors.blueGrey),
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
          padding: const EdgeInsets.only(
            left: 30,
            right: 30,
            top: 36,
          ),
          child: CustomButton(
              onPressed: () {},
              backgroundColor: Colors.blueGrey,
              textColor: Colors.white,
              text: 'Sign in'),
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
                  Navigator.pushNamed(context, RegisterViewCompany.id);
                },
                child: const Text(
                  'Sign up',
                  style: TextStyle(color: Colors.blueGrey, fontSize: 18),
                ))
          ],
        )
      ],
    );
  }
}
