// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:jobsapp/features/Free/presentation/views/register_view_free.dart';

// import '../../../../../core/utils/assest.dart';
// import '../../../../../core/utils/widget/custom_bottom.dart';
// import '../../../../home/presentation/views/widget/custom_text_fiald.dart';

// class LogeInViewFreeBody extends StatelessWidget {
//   const LogeInViewFreeBody({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: [
//         Image.asset(
//           AssetsData.logein,
//         ),
//         const Padding(
//           padding: EdgeInsets.all(8.0),
//           child: Text(
//             'Login',
//             style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.blueGrey),
//           ),
//         ),
//         const Text(
//           'Please Sin in to continue.',
//           style: TextStyle(fontSize: 12, color: Colors.blueGrey),
//         ),
//         Padding(
//           padding: const EdgeInsets.only(left: 12, right: 12, top: 16),
//           child: SizedBox(
//             child: CustomTextField(
//               icon: FontAwesomeIcons.envelope,
//               hint: 'Email',
//               fillColor: Colors.grey.withOpacity(.2),
//             ),
//           // ),
//         ),
//         Padding(
//           padding: const EdgeInsets.only(left: 12, right: 12, top: 16),
//           child: CustomTextField(
//             icon: FontAwesomeIcons.lockOpen,
//             hint: 'password',
//             fillColor: Colors.grey.withOpacity(.2),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.only(
//             left: 30,
//             right: 30,
//             top: 36,
//           ),
//           child: CustomButtom(
//               onPressed: () {},
//               backgroundColor: Colors.blueGrey,
//               textColor: Colors.white,
//               text: 'Sign in'),
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text(
//               'Dont have account?',
//               style: TextStyle(color: Colors.grey),
//             ),
//             TextButton(
//                 onPressed: () {
//                   Navigator.pushNamed(context, RegisterViewFree.id);
//                 },
//                 child: const Text(
//                   'Sign up',
//                   style: TextStyle(color: Colors.blueGrey, fontSize: 18),
//                 ))
//           ],
//         )
//       ],
//     );
//   }
// }
