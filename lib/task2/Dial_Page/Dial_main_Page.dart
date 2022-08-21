import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Add_to_Contacts.dart';
import 'Models/set_of_number.dart';
import 'Row_of_icons.dart';

class Dial_page extends StatefulWidget {
  Dial_page({Key? key}) : super(key: key);

  @override
  State<Dial_page> createState() => _Dial_pageState();
}

String number = "";
String newNumber = "";
String newName = "";
List<String> name = [
  "Dua lipa ",
  "ibraheem",
];

List<String> contacts = [
  "07835130173",
  "07901334533",
];

class _Dial_pageState extends State<Dial_page> {
  @override
  set1() {
    setState(() {});
    return _Dial_pageState;
  }

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          set1();
        });
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Column(
                    children: [
                      Text(
                        number,
                        style: const TextStyle(
                          fontSize: 45,
                        ),
                      ),
                    ],
                  ),
                ),
                const Add_contacts(),
                Set_OF_NUMBER(),
                ROW(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
