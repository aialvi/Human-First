import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OtpCheckScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.blue,
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Container(
                  height: 120.0,
                  child: Image.asset('assets/app_logo.png'),
                ),
              ),
              Container(
                  padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                            labelText: 'OTP Code',
                            labelStyle: TextStyle(color: Colors.grey),
                            hintText: 'XXXXXX',
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue))),
                      ),
                      SizedBox(height: 20.0),
                      SizedBox(height: 40.0),
                      Container(
                        height: 40.0,
                        child: Material(
                          borderRadius: BorderRadius.circular(8.0),
                          shadowColor: Colors.blueAccent,
                          color: Colors.blue,
                          elevation: 8.0,
                          child: GestureDetector(
                            onTap: () {},
                            child: Center(
                              child: Text(
                                'NEXT',
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
                  Text(
                    "Code not received? ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 8.0),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Send Code Again',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline),
                    ),
                  )
                ],
              ),
              SizedBox(height: 32.0),
              Row(
                children: <Widget>[
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Please wait at least 5 minutes before requesting for a new code.',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ))
                ],
              )
            ],
          ),
        ));
  }
}
