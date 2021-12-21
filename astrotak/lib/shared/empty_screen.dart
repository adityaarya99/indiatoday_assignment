import 'package:flutter/cupertino.dart';
class EmptyScreen extends StatefulWidget {
  const EmptyScreen({Key? key}) : super(key: key);

  @override
  _EmptyScreenState createState() => _EmptyScreenState();
}

class _EmptyScreenState extends State<EmptyScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Data is not loaded'));
  }
}
