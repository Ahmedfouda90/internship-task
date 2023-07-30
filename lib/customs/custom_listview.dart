import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return ListView.builder(itemBuilder: (context, int index)=>ListTile(

   ));
  }
  List<Widget> account=[
    Card(
      child: Container(
        height: 100
        ,width: 330,
        decoration: BoxDecoration(
            color: Colors.red
        ),
      ),
    ),
    Card(
      child: Container(
        height: 100
        ,width: 330,
        decoration: BoxDecoration(
            color: Colors.red
        ),
      ),
    ),
    Card(
      child: Container(
        height: 100
        ,width: 330,
        decoration: BoxDecoration(
            color: Colors.red
        ),
      ),
    ),
    Card(
      child: Container(
        height: 100
        ,width: 330,
        decoration: BoxDecoration(
            color: Colors.red
        ),
      ),
    ),
  ];
}
