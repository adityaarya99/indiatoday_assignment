import 'package:flutter/material.dart';
class AstroTakBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Image.asset('assets/images/logo.png'),
      ),
      // Text('Trade', style: TextStyle(color: Colors.white)),
      // Text('Book', style: TextStyle(color: Colors.red)),
    ]);
  }
}