import 'package:flutter/material.dart';
class Model{



  Model(
      {required this.text,
        required this.imagePath,
        @required this.width = 115,
        @required this.color = Colors.white,
        @required this.textColor = Colors.black,
        @required this.selectedNumber = 0,
        @required this.onTap});

  @override
  String imagePath;
  String text;
  double width;
  Color color;
  Color textColor;
  int selectedNumber;

  Function()? onTap;

}
List<Model> list=[
  // Model(),

];