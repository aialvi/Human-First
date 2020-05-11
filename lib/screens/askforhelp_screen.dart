import 'package:flutter/material.dart';

class AskForHelpScreen extends StatefulWidget {
  @override
  _AskForHelpScreenState createState() => _AskForHelpScreenState();
}

class _AskForHelpScreenState extends State<AskForHelpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask for Help'),
        backgroundColor: Color(0xff392850),
      ),
      body: Center(
        child: AskForHelpForm(),
      ),
    );
  }
}


class AskForHelpForm extends StatefulWidget {
  AskForHelpForm({Key key}) : super(key: key);

  @override
  _AskForHelpFormState createState() => _AskForHelpFormState();
}

class _AskForHelpFormState extends State<AskForHelpForm> {
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
                hintText: 'What kind of help do you need',
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
                hintText: 'Contact details to recieve the help',
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
