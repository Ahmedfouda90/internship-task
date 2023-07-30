import 'package:flutter/material.dart';

import '../tese33.dart';
import '../widgets/select_location_body.dart';
import 'drobDownList.dart';


class CustomFirstRow extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return              Padding(
      padding: const EdgeInsets.only(right: 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
/*
                  SizedBox(
                    width: 50,
                  ),
*/
          GestureDetector(
            onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>DrobDowList())),
            child: Image.asset(
              'assets/images/location 2.png',
              height: 90,
            ),
          ),
          SizedBox(
            width: 40,
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('لايجاد اقرب الخدمات عليك',
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.bold)),
                  Text(
                    ' حدد موقعك',
                    style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SelectLocationBody()
            ],
          )
        ],
      ),
    );
  }



}
