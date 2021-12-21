
import 'package:flutter/material.dart';
class AppBarLead extends StatelessWidget {
  const AppBarLead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Image.asset('assets/images/hamburger.png',width: 30,),
    );
  }
}