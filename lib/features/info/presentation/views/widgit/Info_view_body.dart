import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobsapp/core/utils/widget/custom_bottom.dart';
import 'package:jobsapp/features/home/presentation/views/widget/custom_app_bar.dart';
import 'package:jobsapp/features/info/presentation/views/widgit/custom_show_dialog.dart';
import 'package:jobsapp/features/info/presentation/views/widgit/custom_text_container.dart';
import 'package:jobsapp/features/info/presentation/views/widgit/job_details_container.dart';

import '../../../../../core/utils/assest.dart';
import '../../../../home/presentation/views/widget/custom_Container.dart';

class InfoViewBody extends StatelessWidget {
  const InfoViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const CustomAppBar(),
        Stack(children: [
          Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(
                      80,
                    ),
                    bottomRight: Radius.circular(80)),
                image: DecorationImage(
                  colorFilter:
                      ColorFilter.mode(Colors.blueGrey, BlendMode.darken),
                  opacity: .4,
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.employ),
                )),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(AssetsData.employ),
                        //  radius: Radius.circular(100.0),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Source Code',
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Text(
                  'Esem Aforsa',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 16,
                ),
                CustomShowDialog(),
                SizedBox(
                  height: 60,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 180, left: 50, right: 50, bottom: 20),
            child: Column(
              children: [
                const JobDetailsContainer(),
                const SizedBox(
                  height: 16,
                ),
                const CustomTextontainer(
                  title: 'About the job',
                  text:
                      'asdfghjklwertyuikmnbvcxzsdfghjkiuytrewsazxcvbnmkjhgfdsaqwertyuik,m vcxsdertyujmnb cx.,mnbvcxzasdfghjkloiuytreqazsdcrfgbyhnikmol,l.,mnbvcsdfghjasdfghjklwertyuikmnbvcxzsdfghjkiuytrewsazxcvbnmkjhgfdsaqwertyuik,m vcxsdertyujmnb cx.,mnbvcxzasdfghjkloiuytreqazsdcrfgbyhnikmol,l.,mnbvcsdfghjasdfghjklwertyuikmnbvcxzsdfghjkiuytrewsazxcvbnmkjhgfdsaqwertyuik,m vcxsdertyujmnb cx.,mnbvcxzasdfghjkloiuytreqazsdcrfgbyhnikmol,l.,mnbvcsdfghjasdfghjklwertyuikmnbvcxzsdfghjkiuytrewsazxcvbnmkjhgfdsaqwertyuik,m vcxsdertyujmnb cx.,mnbvcxzasdfghjkloiuytreqazsdcrfgbyhnikmol,l.,mnbvcsdfghjasdfghjklwertyuikmnbvcxzsdfghjkiuytrewsazxcvbnmkjhgfdsaqwertyuik,m vcxsdertyujmnb cx.,mnbvcxzasdfghjkloiuytreqazsdcrfgbyhnikmol,l.,mnbvcsdfghjasdfghjklwertyuikmnbvcxzsdfghjkiuytrewsazxcvbnmkjhgfdsaqwertyuik,m vcxsdertyujmnb cx.,mnbvcxzasdfghjkloiuytreqazsdcrfgbyhnikmol,l.,mnbvcsdfghj',
                ),
                const CustomTextontainer(
                  title: 'job requiremnt',
                  text:
                      'asdfghjklwertyuikmnbvcxzsdfghjkiuytrewsazxcvbnmkjhgfdsaqwertyuik,m vcxsdertyujmnb cx.,mnbvcxzasdfghjkloiuytreqazsdcrfgbyhnikmol,l.,mnbvcsdfghjasdfghjklwertyuikmnbvcxzsdfghjkiuytrewsazxcvbnmkjhgfdsaqwertyuik,m vcxsdertyujmnb cx.,mnbvcxzasdfghjkloiuytreqazsdcrfgbyhnikmol,l.,mnbvcsdfghjasdfghjklwertyuikmnbvcxzsdfghjkiuytrewsazxcvbnmkjhgfdsaqwertyuik,m vcxsdertyujmnb cx.,mnbvcxzasdfghjkloiuytreqazsdcrfgbyhnikmol,l.,mnbvcsdfghjasdfghjklwertyuikmnbvcxzsdfghjkiuytrewsazxcvbnmkjhgfdsaqwertyuik,m vcxsdertyujmnb cx.,mnbvcxzasdfghjkloiuytreqazsdcrfgbyhnikmol,l.,mnbvcsdfghjasdfghjklwertyuikmnbvcxzsdfghjkiuytrewsazxcvbnmkjhgfdsaqwertyuik,m vcxsdertyujmnb cx.,mnbvcxzasdfghjkloiuytreqazsdcrfgbyhnikmol,l.,mnbvcsdfghjasdfghjklwertyuikmnbvcxzsdfghjkiuytrewsazxcvbnmkjhgfdsaqwertyuik,m vcxsdertyujmnb cx.,mnbvcxzasdfghjkloiuytreqazsdcrfgbyhnikmol,l.,mnbvcsdfghj',
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: CircleAvatar(
                          backgroundImage: AssetImage(AssetsData.logo),
                          //  radius: Radius.circular(100.0),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Source Code',
                          style: TextStyle(color: Colors.blueGrey),
                        ),
                      ),
                      Divider(
                        indent: 150,
                        endIndent: 150,
                        color: Colors.yellowAccent,
                        thickness: .9,
                      ),
                      SizedBox(
                        height: 32,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ])
      ],
    );
  }
}
