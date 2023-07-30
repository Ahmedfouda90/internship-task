import 'package:flutter/material.dart';

/*void main() {
  runApp(ContainerListApp());
}

class ContainerListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ContainerListPage(),
    );
  }
}*/

/*
class Test extends StatelessWidget {
  Test(
      {required this.text,
      required this.imagePath,
      this.width = 80,
      this.color = Colors.white,
      this.textColor = Colors.black,
      this.selectedNumber = 0,
      required this.onTap,
      required this.isSelected,
      this.height = 40});

  final String imagePath;
  final String text;
  final double width;
  final double height;
  final Color color;
  final Color textColor;
  final int selectedNumber;
  final bool isSelected;

  // width: 80,
  // height: 40,
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 5),
              Image.asset(
                imagePath,
                height: 45,
                // color:Color(0xff548CFF),
              ),
              Text(
                text,
                style: TextStyle(
                  fontSize: 14,
                  color: isSelected ? Colors.red : Colors.blue,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              // SizedBox(width: 5),
            ],
          ),
          // height: 60,
          // width: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: isSelected ? Colors.blue : Colors.grey,
            border: Border.all(color: Colors.grey.shade300),
            // Color(0xff548CFF)
          ),
        ),
      ),
    );
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
  }

  @override
  Widget build(BuildContext context) {
    List<Test> containers = [
      Test(
        text: 'Container 1',
        imagePath: 'assets/images/Menu.jpg',
        onTap: () => _selectContainer(0),
        isSelected: _selectedIndex == 0,
      ),
      Test(
        // width: 40,
        text: 'Container 2',
        imagePath: 'assets/images/Menu.jpg',
        onTap: () => _selectContainer(1),
        isSelected: _selectedIndex == 1,
      ),
      Test(
        text: 'Container 3',
        imagePath: 'assets/images/Menu.jpg',
        onTap: () => _selectContainer(2),
        isSelected: _selectedIndex == 2,
      ),
      Test(
        // height: 100,
        // width: 100,
        text: 'Container 4',
        imagePath: 'assets/images/Menu.jpg',
        onTap: () => _selectContainer(3),
        isSelected: _selectedIndex == 3,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Container List Example'),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(
            */
/*minHeight: 200.0,*//*

            maxHeight: 100,
            maxWidth: MediaQuery.of(context).size.width */
/*, minWidth: 300*//*
),
        child: ListView.builder(
          // padding: EdgeInsets.all(100),
          // shrinkWrap: true,
          controller: ScrollController(),
          scrollDirection: Axis.horizontal,
          itemCount: containers.length,
          itemBuilder: (context, index) {
            return containers[index];
          },
        ),
      ),
    );
  }
}
*/
