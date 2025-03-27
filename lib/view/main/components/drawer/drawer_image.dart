import 'package:flutter/material.dart';

import '../../../../res/constants.dart';

class DrawerImage extends StatelessWidget {
  const DrawerImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      padding: const EdgeInsets.all(defaultPadding/5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(70),
          gradient: LinearGradient(
            colors: [
              Colors.pink,
              Colors.blue.shade900,
            ],
          ),
          boxShadow: const [
            BoxShadow(color: Colors.pink,blurRadius: 10,offset: Offset(0, 2)),
            BoxShadow(color: Colors.blue,blurRadius: 10,offset: Offset(0, -2)),
          ]
      ),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(70),
          child: Transform.rotate(
              angle: 0.1,
              child: Image.asset('assets/images/profile_image.jpeg',fit: BoxFit.cover,))),
    );
  }
}
