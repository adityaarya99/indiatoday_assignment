import 'package:flutter/material.dart';

class AppBarTrail extends StatelessWidget {
  const AppBarTrail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Image.asset('assets/images/profile.png',width: 30,),
    );
  }
}