import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internship_task/pages/home_page.dart';
import 'package:internship_task/test.dart';

import 'customs/custom_card.dart';
import 'customs/custom_container.dart';
import 'customs/custom_container2.dart';
import 'customs/custom_container3.dart';

void main() {
  runApp(InternShipTask());
}

class InternShipTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

