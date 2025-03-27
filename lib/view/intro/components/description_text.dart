import 'package:flutter/material.dart';

import '../../../view model/responsive.dart';

class AnimatedDescriptionText extends StatelessWidget {
  const AnimatedDescriptionText(
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
           'I am a passionate software developer with experience${Responsive.isLargeMobile(context) ? '\n' : ''}in crafting production-grade applications, from full-stack${Responsive.isLargeMobile(context) ? '\n' : ''}mobile apps to AI-driven web tools. I’ve interned at${Responsive.isLargeMobile(context) ? '\n' : ''}Cryptographic Solutions and Codehunters, led impactful${Responsive.isLargeMobile(context) ? '\n' : ''}projects like Smart Agriculture using IoT and AI Email${Responsive.isLargeMobile(context) ? '\n' : ''}Replier, and actively contribute to the CS community at${Responsive.isLargeMobile(context) ? '\n' : ''}NIT Silchar.',
          maxLines: 7,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(wordSpacing: 2, fontSize: value),
        );
      },
    );
  }
}


