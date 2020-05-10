import 'package:flutter/material.dart';
import 'package:humanfirst/models/meta/checklist_options_item_model.dart';
import 'package:grouped_checkbox/grouped_checkbox.dart';

class ChecklistScreen extends StatefulWidget {
  @override
  _ChecklistScreenState createState() => _ChecklistScreenState();
}

class _ChecklistScreenState extends State<ChecklistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Checklist'),
        backgroundColor: Color(0xff392850),
      ),
        body: Center(
          child: GroupedCheckbox(
              itemList: allItemList,
              checkedItemList: checkedItemList,
              disabled: ['Black'],
              onChanged: (itemList) {
                setState(() {
                  selectedItemList = itemList;
                  print('SELECTED ITEM LIST $itemList');
                });
              },
              orientation: CheckboxOrientation.VERTICAL,
              checkColor: Colors.blue,
              activeColor: Colors.red
          ),

        ),
    );
  }
}
