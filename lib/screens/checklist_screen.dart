import 'package:flutter/material.dart';

class ChecklistScreen extends StatefulWidget {
  @override
  _ChecklistScreenState createState() => _ChecklistScreenState();
}

class _ChecklistScreenState extends State<ChecklistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff392850),
      appBar: AppBar(
        title: Text('Checklist'),
        backgroundColor: Color(0xff392850),
      ),
        body: Text('Checklist Body'),
    );
  }
}
