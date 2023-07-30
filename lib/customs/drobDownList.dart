import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class DrobDowList extends StatefulWidget {
  @override
  _DrobDowListState createState() => _DrobDowListState();
}

class _DrobDowListState extends State<DrobDowList> {
  bool showPicker = true; // Variable to control the visibility of the CupertinoPicker
  int selectedValue = 1; // Default selected value

  List<String> pickerItems = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('CupertinoPicker Example'),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      showPicker = !showPicker; // Toggle the value on tap
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Colors.blue,
                        width: 2,
                      ),
                    ),
                    child: Text(
                      'Tap to Show Picker',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                if (showPicker) // Conditionally show the CupertinoPicker based on showPicker value
                  CupertinoPicker(

                    itemExtent: 40, // Height of each item in the picker
                    onSelectedItemChanged: (int index) {
                      setState(() {
                        selectedValue = index; // Update the selected value
                      });
                    },
                    children: pickerItems.map((String item) {
                      return Center(
                        child: Text(item),
                      );
                    }).toList(),
                  ),
                SizedBox(height: 20),
                Text(
                  'Selected Option: ${pickerItems[selectedValue]}',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
        ),
        );
  }
}