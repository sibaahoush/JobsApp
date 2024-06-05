import 'package:flutter/material.dart';
import 'package:jobsapp/core/utils/widget/custom_bottom.dart';
import 'package:jobsapp/features/Free/presentation/views/log_in_view_free.dart';
import 'package:jobsapp/features/auth/pesentation/views/log_in_view_company.dart';
import 'package:jobsapp/features/auth/pesentation/views/loge_in_view.dart';

import '../../../../../core/utils/assest.dart';

class StartViewBody extends StatelessWidget {
  const StartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: const BoxDecoration(
                color: Colors.blueGrey,
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(70))),
            child: const Center(
              child: Text(
                'Hi Siba, lets find your next job',
                style: TextStyle(
                    fontFamily: 'Pacifico', color: Colors.white, fontSize: 22),
              ),
            ),
          ),
          Container(
            // height: 400,
            decoration: const BoxDecoration(color: Colors.blueGrey),
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(80))),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: Container(
                      height: 400,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(80)),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(AssetsData.start))),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 140, left: 24, right: 24),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 100, right: 50, bottom: 26),
                                child: SizedBox(
                                  width: 120,
                                  child: CustomButton(
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context, LogeInViewCompany.id);
                                      },
                                      backgroundColor: Colors.blueGrey,
                                      textColor: Colors.white,
                                      text: 'Company'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 100, right: 50, bottom: 27),
                                child: SizedBox(
                                  width: 120,
                                  child: CustomButton(
                                      onPressed: () {},
                                      backgroundColor: Colors.blueGrey,
                                      textColor: Colors.white,
                                      text: 'Free lancer'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 100, right: 50, bottom: 24),
                                child: SizedBox(
                                  width: 120,
                                  child: CustomButton(
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context, LogeInView.id);
                                      },
                                      backgroundColor: Colors.blueGrey,
                                      textColor: Colors.white,
                                      text: 'user'),
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
