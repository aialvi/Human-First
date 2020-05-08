import 'package:flutter/material.dart';
import 'package:humanfirst/screens/checklist_screen.dart';
import 'package:humanfirst/screens/fooditem_screen.dart';
import 'package:humanfirst/screens/home_screen.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
    routes: {
      '/checklist' : (context) => ChecklistScreen(),
      '/fooditem' : (context) => FoodItemScreen(),
    },
));


