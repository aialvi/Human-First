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
      body: FoodForm(),
    );
  }
}


class FoodForm extends StatefulWidget {
  FoodForm({Key key}) : super(key: key);

  @override
  _FoodFormState createState() => _FoodFormState();
}

class _FoodFormState extends State<FoodForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Number of People you need food for',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter the approximate time and date',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Address to recieve the Food items',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter Priority: Emergency / Normal',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            SizedBox(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
              child: Center(
                child: RaisedButton(
                  onPressed: () {
                    // Validate will return true if the form is valid, or false if
                    // the form is invalid.
                    if (_formKey.currentState.validate()) {
                      // Process data.
                    }
                  },
                  child: Text('Submit'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
