import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Container(
                  height: 220.0,
                  child: Image.asset('assets/app_logo.png'),
                ),
              ),
              Container(
                  padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                            labelText: 'Phone Number',
                            labelStyle: TextStyle(color: Colors.grey),
                            hintText: '01XXXXXXXXX',
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue))),
                      ),
                      SizedBox(height: 20.0),
                      SizedBox(height: 40.0),
                      Container(
                        height: 40.0,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/otp-checker');
                          },
                          child: Material(
                            borderRadius: BorderRadius.circular(8.0),
                            shadowColor: Colors.blueAccent,
                            color: Colors.blue,
                            elevation: 8.0,
                            child: Center(
                              child: Text(
                                'LOGIN WITH PHONE',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
              SizedBox(height: 24.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Having Problem? ", style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(width: 8.0),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed('/signup');
                    },
                    child: Text(
                      'Get Help Here',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          decoration: TextDecoration.underline
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
