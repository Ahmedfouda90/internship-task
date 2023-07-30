import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget{
  @override
  Widget build(BuildContext context) {



    return             Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        height: 50,
        child: TextField(
          decoration: InputDecoration(
              hintStyle: TextStyle(
                color: Color.fromRGBO(144, 144, 144, 1),
              ),
              fillColor: Color.fromRGBO(244, 247, 251, 1),
              filled: true,
              border: InputBorder.none,
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(100)),
              hintText: 'ابحث عن اقرب مستشفي ',
              hintTextDirection: TextDirection.rtl,
              prefixIcon: Icon(Icons.search)),
        ),
      ),
    );

  }



}