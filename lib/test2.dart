/*
import 'package:flutter/material.dart';
import 'package:internship_task/test.dart';

class ContainerListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContainerListPage(),
    );
  }
}

class CustomContainer extends StatelessWidget {
  */
/* final String title;
  final bool isSelected;
  final VoidCallback onTap;
*//*


 final  bool isSelected;

  String imagePath;
  String? text;
  double width;
  Color color;
  Color textColor;
  int selectedNumber;

  final VoidCallback onTap;

  CustomContainer(
      {
         required this.isSelected,
    @  required this.text,
      required this.imagePath,
      @required this.width = 115,
      @required this.color = Colors.white,
      @required this.textColor = Colors.black,
      @required this.selectedNumber = 0,
      required this.onTap,
      // required String title

      });

*/
/*
  CustomContainer({required this.title, required this.isSelected, required this.onTap});
*//*


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 5,
            ),
            Image.asset(
              imagePath,
              height: 45,
              // color:Color(0xff548CFF),
            ),
            Text(
              text!,
              style: TextStyle(
                fontSize: 14,
                color: textColor,
                // fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 5,
            ),
          ],
        ),
        height: 60,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: isSelected ? Colors.blue : Colors.grey,
            border: Border.all(color: Colors.grey.shade300)
            // Color(0xff548CFF)
            ),
      ),
    );

*/
/*
      GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(16.0),
        color: isSelected ? Colors.blue : Colors.grey,
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
      ),
    );
*//*

  }
}

class ContainerListPage extends StatefulWidget {
  @override
  _ContainerListPageState createState() => _ContainerListPageState();
}

class _ContainerListPageState extends State<ContainerListPage> {
  int _selectedIndex = -1;

  void _selectContainer(int index) {
    setState(() {
      if (_selectedIndex == index) {
        _selectedIndex = -1; // Unselect if the same container is clicked again.
      } else {
        _selectedIndex = index;
      }
    });
    print(_selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
 */
/*   List<String> containerTitles = [
      'Container 1',
      'Container 2',
      'Container 3',
      'Container 4',
      "qerdas"
    ];*//*

    List list = [
      Test(color: Colors.red,
        text: 'dsdgs',
        onTap: () {},
        imagePath: 'assets/images/Home.jpg',),
      Test(color: Colors.red,
        text: 'dsdgs',
        onTap: () {},
        imagePath: 'assets/images/Home.jpg',),
      Test(color: Colors.red,
        text: 'dsdgs',
        onTap: () {},
        imagePath: 'assets/images/Home.jpg',),
      Test(color: Colors.red,
        text: 'dsdgs',
        onTap: () {},
        imagePath: 'assets/images/Home.jpg',),
      Test(color: Colors.red,
        text: 'dsdgs',
        onTap: () {},
        imagePath: 'assets/images/Home.jpg',),
      Test(color: Colors.red,
        text: 'dsdgs',
        onTap: () {},
        imagePath: 'assets/images/Home.jpg',),
      Test(color: Colors.red,
        text: 'dsdgs',
        onTap: () {},
        imagePath: 'assets/images/Home.jpg',),
    ];

    return Scaffold(
      appBar: AppBar(
        title:  Text('Container List Example'),
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return CustomContainer(
            // title: containerTitles[index],
            isSelected: index == _selectedIndex,
            onTap: () => _selectContainer(index),
            imagePath: 'assets/images/Emergency Icon.jpg',
            width: 150,

              // color: isSelected ? Colors.red:Colors.black,
          );
        },
      ),
    );
  }
}
*/
