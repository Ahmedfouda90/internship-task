import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class SelectLocationBody extends StatefulWidget {
  @override
  State<SelectLocationBody> createState() => _SelectLocationBodyState();
}

class _SelectLocationBodyState extends State<SelectLocationBody> {
  @override
  Widget build(BuildContext context) {
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
    return Row(
      children: [
        //  that is for the drob down list
/*
        GestureDetector(
          child: Container(
            width: 50,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.red

            ),
            child: Center(
              child: Text(
                  'kjfmdlk'
              ),
            ),
          ),
          onTap: ()=>
              Container(
                height: 400,
                width: 70,
                child:               DropdownButtonHideUnderline(
                  child: DropdownButton2<String>(
                    isExpanded: true,
                    hint: Text(
                      'Select Item',
                      style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).hintColor,
                      ),
                    ),
                    items: items
                        .map((String item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ))
                        .toList(),
                    value: selectedValue,
                    onChanged: (String? value) {
                      setState(() {
                        selectedValue = value;
                      });
                    },
                    buttonStyleData: const ButtonStyleData(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      height: 40,
                      width: 140,
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      height: 40,
                    ),
                  ),
                ),

              ),

        ),
*/

        GestureDetector(
          onTap: () {
            showBottomSheet(
              context: context,
              builder: (BuildContext context) => Container(
                decoration: BoxDecoration(
                    // color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white54,
                        blurRadius: 20,
                        spreadRadius: 20,
                        // blurStyle: BlurStyle.outer
                      )
                    ],
                    // color: Colors.red,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                height: 250,
                width: MediaQuery.of(context).size.width,
                // color: Colors.red,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 30, top: 0),
                        child: Text(
                          'تغيير الموقع',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: SizedBox(
                          height: 50,
                          child: TextField(
                            decoration: InputDecoration(
                              hintTextDirection: TextDirection.rtl,
                              hintText: ' القاهره',
                              hintStyle: TextStyle(),
                              filled: true,
                              fillColor: const Color.fromRGBO(241, 246, 255, 1),
                              border: InputBorder.none,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: SizedBox(
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                              hintTextDirection: TextDirection.rtl,
                              hintText: 'الشيخ زايد',
                              filled: true,
                              fillColor: const Color.fromRGBO(241, 246, 255, 1),
                              border: InputBorder.none,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            child: Center(
                              child: Text(
                                'تاكيد الموقع ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ),
                            height: 35,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: Color(0xff548CFF),
                                borderRadius: BorderRadius.circular(18)),
                          ),
                        ),
                      ),
                      // SizedBox(height: 10,),

                      Center(
                        child: Text(
                          'او',
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                      ),
                      // SizedBox(height: 10,),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            child: Center(
                              child: Text(
                                'تحديد موقعي الحالي ',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            height: 35,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(241, 246, 255, 1),
                                borderRadius: BorderRadius.circular(18)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // enableDrag: false,
            );
          },
          child: Container(
            child: Center(
              child: Text(
                'تحديد الموقع الحالي',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            height: 35,
            width: 165,
            decoration: BoxDecoration(
                color: Color(0xff548CFF), borderRadius: BorderRadius.circular(18)),
          ),
        ),

      ]  );

  }
}
