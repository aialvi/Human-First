import 'package:flutter/material.dart';

import '../widgets/home_screen/dashboard_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => new HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff392850),
      appBar: AppBar(
        title: Text('Human First'),
        centerTitle: true,
        backgroundColor: Color(0xff392850),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16,
              right: 16,
            ),
          ),
          DashboardWidget()
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff392850),
              ),
              child: Text(
                'John Doe',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.event_available),
              title: Text('Checklist'),
            ),
            ListTile(
              leading: Icon(Icons.healing),
              title: Text('Ask for Help'),
            ),
            ListTile(
              leading: Icon(Icons.add_box),
              title: Text('Health Tips'),
            ),
            ListTile(
              leading: Icon(Icons.call),
              title: Text('Helpline'),
            ),
            ListTile(
              leading: Icon(Icons.adjust),
              title: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}