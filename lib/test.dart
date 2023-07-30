import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  Test(
      {required this.text,
      this.imagePath,
      @required this.width = 115,
      @required this.color = Colors.white,
      @required this.textColor = Colors.black,
      @required this.selectedNumber = 0,
      @required this.onTap,
      @required this.isSelected = true});

  String? imagePath;
  String text;
  double width;
  Color color;
  Color textColor;
  int selectedNumber;
  final bool isSelected;

  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 7),
        height: 60,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: isSelected ? Colors.blue : Colors.white,
            border: Border.all(color: Colors.grey.shade300)
            // Color(0xff548CFF)
            ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 5,
            ),
            imagePath!=null?
            Image.asset(
              imagePath!,
              height: 35,
              // color:Color(0xff548CFF),
            ):Container(width: 0,),
            Text(
              text,
              style: TextStyle(
                fontSize:imagePath==null? 22:14,
                color: isSelected ? Colors.white : Colors.black,
                // fontWeight: FontWeight.bold,
              ),
            ),
          const  SizedBox(
              width: 5,
            ),
          ],
        ),
      ),
    );
  }
}
/*

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
*/

class ContainerListPage extends StatefulWidget {
  const ContainerListPage({super.key});

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
    /*  List<String> containerTitles = [
      'Container 1',
      'Container 2',
      'Container 3',
      'Container 4',
      "qerdas"
    ];*/
    List list = [
      Test(
        color: Colors.red,
        text: 'dsdgs',
        onTap: () {},
        imagePath: 'assets/images/Home.jpg',
      ),
      Test(
        color: Colors.red,
        text: 'dsdgs',
        onTap: () {},
        imagePath: 'assets/images/Home.jpg',
      ),
      Test(
        color: Colors.red,
        text: 'dsdgs',
        onTap: () {},
        imagePath: 'assets/images/Home.jpg',
      ),
      Test(
        color: Colors.red,
        text: 'dsdgs',
        onTap: () {},
        imagePath: 'assets/images/Home.jpg',
      ),
      Test(
        color: Colors.red,
        text: 'dsdgs',
        onTap: () {},
        imagePath: 'assets/images/Home.jpg',
      ),
      Test(
        color: Colors.red,
        text: 'dsdgs',
        onTap: () {},
        imagePath: 'assets/images/Home.jpg',
      ),
      Test(
        color: Colors.red,
        text: 'dsdgs',
        onTap: () {},
        imagePath: 'assets/images/Home.jpg',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Container List Example'),
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Test(
            text: 'trtertr',
            imagePath: 'assets/images/image 26.jpg',
            width: 40,
            // color: Colors.red,
            // textColor: textColor,
            // selectedNumber: selectedNumber,
            onTap: () => _selectContainer(index),
            // isSelected:
          );

/*
            CustomContainer(
            // title: containerTitles[index],
            isSelected: index == _selectedIndex,
            onTap: () => _selectContainer(index),
            text:containerTitles[index],
            imagePath: 'assets/images/Emergency Icon.jpg',
          );
*/
        },
      ),
    );
  }
}
