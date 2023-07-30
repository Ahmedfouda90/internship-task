import 'package:flutter/material.dart';

import '../customs/custom_card.dart';
class AvaterBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {



    return       Expanded(
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          SizedBox(
            height: 15,
          ),
          CustomAvatar(
            text2: 'مطور الهوية الديناميكية',
            text1: 'الدكتور عبدالله سعودي',
            avater: 'assets/images/Avatar.png',
            text3: 'مستشفي',
          ),
          SizedBox(
            height: 15,
          ),
          CustomAvatar(
            text2: 'فرع التجمع',
            text1: 'مستشفي الدكتور حسن',
            avater: 'assets/images/image 26.jpg',
            text3: '380 فرع',
          ),
          SizedBox(
            height: 15,
          ),
          CustomAvatar(
            text2: 'مطور الهوية الديناميكية',
            text1: 'الدكتور ادهم',
            avater: 'assets/images/Avatar.png',
            text3: 'مستشفي',
          ),
          SizedBox(
            height: 15,
          ),
          CustomAvatar(
            text2: 'فرع التجمع',
            text1: 'مستشفي دكتور فودة',
            avater: 'assets/images/image 26.jpg',
            text3: '380 فرع',
          )
        ],
      ),
    );
  }



}