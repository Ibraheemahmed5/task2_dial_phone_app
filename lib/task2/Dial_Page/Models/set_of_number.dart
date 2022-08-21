import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:task2_dial_phone_app/task2/Dial_Page/Dial_main_Page.dart';

class Set_OF_NUMBER extends StatefulWidget {
  Set_OF_NUMBER({
    Key? key,
  }) : super(key: key);

  @override
  State<Set_OF_NUMBER> createState() => _Set_OF_NUMBERState();
}

class _Set_OF_NUMBERState extends State<Set_OF_NUMBER> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Set.set1();
      },
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NUM(text1: "1", text2: "", lable: "1"),
                NUM(text1: "2", text2: "ABC", lable: "2"),
                NUM(text1: "3", text2: "DEF", lable: "3"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NUM(text1: "4", text2: "GHI", lable: "4"),
                NUM(text1: "5", text2: "JKL", lable: "5"),
                NUM(text1: "6", text2: "MNO", lable: "6"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NUM(text1: "7", text2: "PQRS", lable: "7"),
                NUM(text1: "8", text2: "TUV", lable: "8"),
                NUM(text1: "9", text2: "WXYZ", lable: "9"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NUM(text1: "*", text2: "", lable: "*"),
                NUM(text1: "0", text2: "+", lable: "0"),
                NUM(text1: "#", text2: "", lable: "#"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class NUM extends StatefulWidget {
  final String text1;
  final String text2;
  final String lable;

  NUM({
    Key? key,
    required this.text1,
    required this.text2,
    required this.lable,
  }) : super(key: key);

  @override
  State<NUM> createState() => _NUMState();
}

class _NUMState extends State<NUM> {
  @override
  final Dial_page page = Dial_page();

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
      child: Container(
        color: Colors.white,
        child: TextButton(
          style: ButtonStyle(),
          child: Column(
            children: [
              Text(
                widget.text1,
                style: const TextStyle(fontSize: 40, color: Colors.black),
              ),
              Text(
                widget.text2,
                style: TextStyle(color: Colors.black26),
              ),
            ],
          ),
          onPressed: () {
            page;


            setState(() {
              Set.set1();
              if (number.length > 10) {
                print("THE NUMBER IS UPPER ${number.length} OUT OF THE RANGE");
                newNumber = number;

                print(newNumber);
              } else {
                if (widget.lable == "1") {
                  number = "${number}1";
                }
                if (widget.lable == "2") {
                  number = "${number}2";
                }
                if (widget.lable == "3") {
                  number = number + "3";
                }
                if (widget.lable == "4") {
                  number = number + "4";
                }
                if (widget.lable == "5") {
                  number = number + "5";
                }
                if (widget.lable == "6") {
                  number = number + "6";
                }
                if (widget.lable == "7") {
                  number = number + "7";
                }
                if (widget.lable == "8") {
                  number = number + "8";
                }
                if (widget.lable == "9") {
                  number = number + "9";
                }
                if (widget.lable == "0") {
                  number = number + "0";
                }
              }
            });
          },
        ),
      ),
    );
  }
}

class Set extends Dial_page {
  Set.set1({Key? key}) : super(key: key);
}
