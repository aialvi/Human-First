import 'package:flutter/material.dart';
import 'package:humanfirst/screens/checklist_screen.dart';
import 'package:humanfirst/screens/fooditem_screen.dart';
import 'package:humanfirst/screens/helpcenters_screen.dart';
import 'package:humanfirst/screens/askforhelp_screen.dart';
import 'package:humanfirst/screens/settings_screen.dart';
import 'package:humanfirst/screens/statistics_screen.dart';
import 'package:humanfirst/authenticate/login_screen.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogInPage(),
      routes: {
        '/checklist': (context) => ChecklistScreen(),
        '/fooditem': (context) => FoodItemScreen(),
        '/helpcenteritem': (context) => HelpCenterScreen(),
        '/askforhelpitem': (context) => AskForHelpScreen(),
        '/statisticsitem': (context) => StatisticsScreen(),
        '/settingsitem': (context) => SettingsScreen(),
      },
    ));
