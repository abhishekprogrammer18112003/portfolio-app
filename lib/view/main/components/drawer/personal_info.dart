import 'package:flutter/material.dart';

import '../../../../res/constants.dart';
import 'header_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: defaultPadding/2,),
        AreaInfoText(title: 'Contact', text: '08099950828'),
        AreaInfoText(title: 'Email', text: 'tech.abhishekchauhan@gmail.com'),
        AreaInfoText(title: 'LinkedIn', text: '@abhishek-chauhan'),
        AreaInfoText(title: 'Github', text: '@abhishekprogrammer18112003'),
        SizedBox(
          height: defaultPadding,
        ),
        // Text('Skills',style: TextStyle(color: Colors.white , fontSize: 17 , fontWeight: FontWeight.bold),),
        // SizedBox(
          // height: defaultPadding,
        // ),
      ],
    );
  }
}
