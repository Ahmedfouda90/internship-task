import 'package:flutter/material.dart';

import '../customs/custom_container.dart';

class FilterOneBody extends StatefulWidget {
  @override
  State<FilterOneBody> createState() => _FilterOneBodyState();
}

class _FilterOneBodyState extends State<FilterOneBody> {
/*
  List<Widget> fliterLisr() {
    List<Widget> fliterLisr = [
      CustomContainer(
        color: Colors.grey,
        text: 'مراكز اشعة',
        imagePath: 'assets/images/مراكز اشعة.png',
        width: 115,
      ),
      SizedBox(
        width: 10,
        // width: 50,
      ),
      CustomContainer(
        text: 'مراكز اسنان',
        imagePath: 'assets/images/اسنان.jpg',
        width: 120,
      ),
      SizedBox(
        width: 10,
        // width: 50,
      ),
      CustomContainer(
        text: 'استشارة عن بعد',
        imagePath: 'assets/images/استشاره عن بعد.jpg',
        width: 150,
      ),
      SizedBox(
        width: 10,
        // width: 50,
      ),
      CustomContainer(
        text: 'خدمات رعاية منزلية',
        imagePath: 'assets/images/خدمات رعاية منزلية .jpg',
        width: 160,
      ),
      SizedBox(
        width: 10,
        // width: 50,
      ),
      CustomContainer(
        text: 'مختبارات',
        imagePath: 'assets/images/مختبارات .jpg',

        // width: 120,
      ),
      SizedBox(
        width: 10,
        // width: 50,
      ),
      Container(
        height: 60,
        width: 115,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Color(0xff548CFF),
            border: Border.all(color: Colors.grey.shade300)
            // Color(0xff548CFF)
            ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment,
          // crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            SizedBox(
              width: 5,
            ),
            ClipOval(
              child: Image.asset(
                'assets/images/مستشفيات .jpg',
                height: 30, fit: BoxFit.cover,

                // color:Color(0xff548CFF),
              ),
            ),
            Text(
              "مستشفيات",
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                // fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 5,
            ),
          ],
        ),
      ),
      SizedBox(
        width: 10,
        // width: 50,
      ),
      CustomContainer(
        text: 'اطباء',
        imagePath: 'assets/images/اطباء.jpg',
        width: 90,
      ),
      SizedBox(
        width: 10,
        // width: 50,
      ),
    ];
    return fliterLisr;
  }
*/
  Color selectedColor = Colors.grey;

  int? selectedContainer ;

  selectedItem(int containerNumber) {
    setState(() {
      selectedContainer = containerNumber;
    });
  }

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      reverse: true,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(

          children: [
             GestureDetector(
               onTap: (){
                 selectedItem(1);

               },
               child: CustomContainer(
               color:selectedContainer==1? Colors.grey:Colors.white,
               text: 'مراكز اشعة',
               imagePath: 'assets/images/مراكز اشعة.png',
               width: 115,
           ),
             ),
           SizedBox(
             width: 10,
             // width: 50,
           ),
           GestureDetector(
             onTap: selectedItem(2),
             child: CustomContainer(
               text: 'مراكز اسنان',
               imagePath: 'assets/images/اسنان.jpg',
               width: 120,
               color: selectedContainer==2?Colors.grey:Colors.white,

             ),
           ),
           SizedBox(
             width: 10,
             // width: 50,
           ),
           CustomContainer(
             text: 'استشارة عن بعد',
             imagePath: 'assets/images/استشاره عن بعد.jpg',
             width: 150,
           ),
           SizedBox(
             width: 10,
             // width: 50,
           ),
           CustomContainer(
             text: 'خدمات رعاية منزلية',
             imagePath: 'assets/images/خدمات رعاية منزلية .jpg',
             width: 160,
           ),
           SizedBox(
             width: 10,
             // width: 50,
           ),
           CustomContainer(
             text: 'مختبارات',
             imagePath: 'assets/images/مختبارات .jpg',

             // width: 120,
           ),
           SizedBox(
             width: 10,
             // width: 50,
           ),
           Container(
             height: 60,
             width: 115,
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(12),
                 color: Color(0xff548CFF),
                 border: Border.all(color: Colors.grey.shade300)
               // Color(0xff548CFF)
             ),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               // crossAxisAlignment: CrossAxisAlignment,
               // crossAxisAlignment: CrossAxisAlignment.start,

               children: [
                 SizedBox(
                   width: 5,
                 ),
                 ClipOval(
                   child: Image.asset(
                     'assets/images/مستشفيات .jpg',
                     height: 30, fit: BoxFit.cover,

                     // color:Color(0xff548CFF),
                   ),
                 ),
                 Text(
                   "مستشفيات",
                   style: TextStyle(
                     fontSize: 14,
                     color: Colors.white,
                     // fontWeight: FontWeight.bold,
                   ),
                 ),
                 SizedBox(
                   width: 5,
                 ),
               ],
             ),
           ),
           SizedBox(
             width: 10,
             // width: 50,
           ),
           CustomContainer(
             text: 'اطباء',
             imagePath: 'assets/images/اطباء.jpg',
             width: 90,
           ),
           SizedBox(
             width: 10,
             // width: 50,
           ),
            Container(
                height: 60,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    // color: Color(0xff548CFF),
                    border: Border.all(color: Colors.grey.shade300)
                    // Color(0xff548CFF)
                    ),
                child: Center(
                  child: const Text(
                    'الكل',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
