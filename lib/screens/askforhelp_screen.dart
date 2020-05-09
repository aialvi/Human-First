import 'package:flutter/material.dart';

class AskForHelpScreen extends StatefulWidget {
  @override
  _AskForHelpScreenState createState() => _AskForHelpScreenState();
}

class _AskForHelpScreenState extends State<AskForHelpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask for Help'),
        backgroundColor: Color(0xff392850),
      ),
      body: Center(
        child: Text('Form',
        ),
      ),
    );
  }
}
