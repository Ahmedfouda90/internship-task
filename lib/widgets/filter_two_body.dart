import 'package:flutter/material.dart';

import '../customs/custom_container2.dart';
import '../customs/custom_container3.dart';
class FilterTwoBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomContainerTwo(text: 'اخري  '),
          SizedBox(
            width: 5,
          ),
          CustomContainerThree(),
          SizedBox(
            width: 5,
          ),
          CustomContainerTwo(text: 'مستشفيات  '),
          SizedBox(
            width: 5,
          ),
          CustomContainerThree(),
          SizedBox(
            width: 5,
          ),
          CustomContainerTwo(text: 'القلب '),
          SizedBox(
            width: 5,
          ),
          CustomContainerThree(),
          SizedBox(
            width: 5,
          ),
          CustomContainerTwo(text: 'العيون  '),
          SizedBox(
            width: 5,
          ),
          CustomContainerThree(),
          SizedBox(
            width: 5,
          ),
          CustomContainerTwo(text: 'مخ '),
          SizedBox(
            width: 5,
          ),
          CustomContainerThree(),
          SizedBox(
            width: 5,
          ),
          CustomContainerTwo(text: 'الكل '),
          SizedBox(
            width: 5,
          ),
          CustomContainerThree(),
          SizedBox(
            width: 5,
          ),
        ],
      ),
    );
  }




}