import 'package:flutter/material.dart';

class FoodItemScreen extends StatefulWidget {
  @override
  _FoodItemScreenState createState() => _FoodItemScreenState();
}

class _FoodItemScreenState extends State<FoodItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask for Food'),
        backgroundColor: Color(0xff392850),
      ),
    );
  }
}
