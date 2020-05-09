import 'package:flutter/material.dart';

class ChecklistScreen extends StatefulWidget {
  @override
  _ChecklistScreenState createState() => _ChecklistScreenState();
}

class _ChecklistScreenState extends State<ChecklistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Checklist'),
        backgroundColor: Color(0xff392850),
      ),
        body: Center(
          child: Text('Checklist Body'),
        ),
    );
  }
}
