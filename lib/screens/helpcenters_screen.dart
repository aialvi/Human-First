import 'package:flutter/material.dart';

class HelpCenterScreen extends StatefulWidget {
  @override
  _HelpCenterScreenState createState() => _HelpCenterScreenState();
}

class _HelpCenterScreenState extends State<HelpCenterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Help Centers'),
        backgroundColor: Color(0xff392850),
      ),
      body: Center(
        child: Text('List of Help centers',
    ),
      ),
    );
  }
}
