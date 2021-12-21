import 'package:flutter/material.dart';
class AskQuestion extends StatefulWidget {
  const AskQuestion({Key? key}) : super(key: key);

  @override
  _AskQuestionState createState() => _AskQuestionState();
}

class _AskQuestionState extends State<AskQuestion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text('Ask Question'),
        ),
      ),
    );
  }
}
