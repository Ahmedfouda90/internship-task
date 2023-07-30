import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../customs/custom_card.dart';
import '../customs/custom_container2.dart';
import '../customs/custom_container3.dart';
import '../customs/custom_first-row.dart';
import '../customs/custom_text_field.dart';
import '../test.dart';
import '../test2.dart';
import '../widgets/filter_one_body.dart';
import '../widgets/select_location_body.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final _scaffoldKey = GlobalKey<ScaffoldState>();
  int selectedIndexOne = -1;
  int selectedIndexTwo = -1;
  bool isChanged = false;

  void selectContainerOne(int index) {
    setState(() {
      if (selectedIndexOne == index) {
        selectedIndexOne =
            -1; // Unselect if the same container is clicked again.
      } else {
        selectedIndexOne = index;
      }
    });
  }

  void selectContainerTwo(int index) {
    setState(() {
      if (selectedIndexTwo != index) {
        selectedIndexTwo =
            -1; // Unselect if the same container is clicked again.
      } else {
        selectedIndexTwo = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Test> filterListOne = [
      Test(
        width: 150,
        text: 'مراكز اشعة',
        imagePath: 'assets/images/مراكز اشعة.png',
        onTap: () => selectContainerOne(3),
        isSelected: selectedIndexOne == 3,
      ),
      Test(
        width: 120,
        text: 'مراكز اسنان',
        imagePath: 'assets/images/اسنان.jpg',
        onTap: () => selectContainerOne(6),
        isSelected: selectedIndexOne == 6,
      ),
      Test(
        width: 150,
        text: 'استشارة عن بعد',
        imagePath: 'assets/images/استشاره عن بعد.jpg',
        onTap: () => selectContainerOne(5),
        isSelected: selectedIndexOne == 5,
      ),
      Test(
        width: 150,
        text: 'خدمات رعاية منزلية',
        imagePath: 'assets/images/خدمات رعاية منزلية .jpg',
        onTap: () => selectContainerOne(4),
        isSelected: selectedIndexOne == 4,
      ),
      Test(
        width: 100,
        text: 'مختبارات',
        imagePath: 'assets/images/مختبارات .jpg',
        onTap: () => selectContainerOne(3),
        isSelected: selectedIndexOne == 3,
      ),
      Test(
        text: 'مستشفيات',
        imagePath: 'assets/images/مستشفيات .jpg',
        onTap: () => selectContainerOne(2),
        isSelected: selectedIndexOne == 2,
      ),
      Test(
        // width: 40,
        text: 'اطباء',
        imagePath: 'assets/images/اطباء.jpg',
        onTap: () => selectContainerOne(1),
        isSelected: selectedIndexOne == 1,
      ),
      Test(
        text: 'الكل',
        // imagePath: 'assets/images/Menu.jpg',
        onTap: () => selectContainerOne(0),
        isSelected: selectedIndexOne == 0,
      ),
    ];

    List<CustomContainerTwo> filterListTwo = [
      CustomContainerTwo(
        text: 'اخري  ',
        onTap: () => selectContainerTwo(5),
        isSelected: selectedIndexTwo == 5,
      ),
      CustomContainerTwo(
        text: 'مستشفيات  ',
        onTap: () => selectContainerTwo(4),
        isSelected: selectedIndexTwo == 4,
      ),
      CustomContainerTwo(
        text: 'القلب ',
        onTap: () => selectContainerTwo(3),
        isSelected: selectedIndexTwo == 3,
      ),
      CustomContainerTwo(
        text: 'العيون  ',
        onTap: () => selectContainerTwo(2),
        isSelected: selectedIndexTwo == 2,
      ),
      CustomContainerTwo(
        text: 'مخ ',
        onTap: () => selectContainerTwo(1),
        isSelected: selectedIndexTwo == 1,
      ),
      CustomContainerTwo(
        text: 'الكل ',
        onTap: () => selectContainerTwo(0),
        isSelected: selectedIndexTwo == 0,
      ),
    ];
    final List<String> items = [
      'Item1',
      'Item2',
      'Item3',
      'Item4',
      'Item5',
      'Item6',
      'Item7',
      'Item8',
    ];
    String? selectedValue;
    return Scaffold(
      // key: _scaffoldKey,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.grey.shade100,
        animationCurve: Curves.decelerate,
        color: const Color.fromRGBO(255, 255, 255, 1),
        items: [
          Image.asset('assets/images/Home.jpg'),
          Image.asset('assets/images/Book.jpg'),
          Image.asset('assets/images/Emergency Icon.jpg'),
          Image.asset('assets/images/Records.jpg'),
          Image.asset('assets/images/Menu.jpg'),
        ],
      ),
      body: Builder(
        builder: (context) => Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Image.asset('assets/images/Group 639.jpg'),
            SizedBox(
              height: 25,
              // width: 50,
            ),
            CustomFirstRow(),
            CustomTextField(),
            // FilterOneBody(),
            ConstrainedBox(
              constraints: BoxConstraints(
                  maxHeight: 50, maxWidth: MediaQuery.of(context).size.width),
              child: ListView.builder(
                // padding: EdgeInsets.only(right: 20,left: 5),
                shrinkWrap: true,
                controller: ScrollController(),
                scrollDirection: Axis.horizontal,
                itemCount: filterListOne.length,
                itemBuilder: (context, index) {
                  return filterListOne[index];
                },
              ),
            ),

            const SizedBox(
              height: 5,
            ),
/*
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomContainerTwo(text: 'اخري  '),

                  CustomContainerTwo(text: 'مستشفيات  '),
                  CustomContainerTwo(text: 'القلب '),
                  CustomContainerTwo(text: 'العيون  '),
                  CustomContainerTwo(text: 'مخ '),

                  CustomContainerTwo(text: 'الكل '),

                ],
              ),
            ),
*/

            ConstrainedBox(
              constraints: BoxConstraints(
                  maxHeight: 50, maxWidth: MediaQuery.of(context).size.width),
              child: ListView.builder(
                // padding: EdgeInsets.only(right: 20,left: 5),
                shrinkWrap: true,
                controller: ScrollController(),
                scrollDirection: Axis.horizontal,
                itemCount: filterListTwo.length,
                itemBuilder: (context, index) {
                  return filterListTwo[index];
                },
              ),
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    isChanged = !isChanged;
                  });
                },
                icon: Icon(Icons.change_circle_outlined)),

            isChanged
                ? Expanded(
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
                  )
                : Expanded(
                    child: ListView(
                      controller: ScrollController(),
                      scrollDirection: Axis.vertical,
                      children: [
                        Image.asset(
                          'assets/images/soon 2.jpg',
                          height: 170,
                        ),
                        Center(
                            child: Text(
                          'نعمل جاهدين علي توفير خدماتنا \n بالقرب من موقعك الحالي',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )),
                        SizedBox(height: 10,),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 130),
                          child: Container(
                            child: Center(
                              child: Text(
                                'تغيير الموقع ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ),
                            height: 40,
                            // width: 5,
                            decoration: BoxDecoration(
                                color: Color(0xff548CFF),
                                borderRadius: BorderRadius.circular(18)),
                          ),
                        )
                        ,
                        SizedBox(height: 50,)
                      ],
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
