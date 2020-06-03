import 'package:flutter/material.dart';
import 'package:humanfirst/models/meta/helpcenters_item_model.dart';

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
      body:

      Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),

          child: new ListView.builder
            (
              itemCount: helpcenters.length,
              itemBuilder: (BuildContext ctxt, int index) {
                return new Text(helpcenters[index]);
              }
          ),
        ),
    ),
      );

  }
}
