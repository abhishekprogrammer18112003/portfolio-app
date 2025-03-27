import 'package:flutter/material.dart';

import '../../../view model/responsive.dart';

class AnimatedBioText extends StatelessWidget {
  const AnimatedBioText(
      {super.key, required this.start, required this.end});
  final double start;
  final double end;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: start, end: end),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Text(
           'I\'m Abhishek Chauhan, a final-year Computer Science${'\n'}student at NIT Silchar, specializing in scalable mobile${Responsive.isLargeMobile(context) ? '\n' : ''}using Flutter, Java Spring Boot, and Firebase.',
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.headlineLarge!.copyWith( wordSpacing: 2, fontSize: value , fontWeight: FontWeight.bold),
        );
      },
    );
  }
}


