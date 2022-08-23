import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:task2_dial_phone_app/task2/Dial_Page/Dial_main_Page.dart';

class Set_OF_NUMBER extends StatelessWidget {
  const Set_OF_NUMBER({Key? key, required this.set}) : super(key: key);
final Function set;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NUM(
                  text1: "1",
                  text2: "",
                  lable: "1",
                  onPressed: () {
                    print("dsds");

                    set();
                  }),
              NUM(
                  text1: "2",
                  text2: "ABC",
                  lable: "2",
                  onPressed: () {
                    set();
                  }),
              NUM(
                  text1: "3",
                  text2: "DEF",
                  lable: "3",
                  onPressed: () {
                    set();
                  }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NUM(
                  text1: "4",
                  text2: "GHI",
                  lable: "4",
                  onPressed: () {
                    set();
                  }),
              NUM(
                  text1: "5",
                  text2: "JKL",
                  lable: "5",
                  onPressed: () {
                    set();
                  }),
              NUM(
                  text1: "6",
                  text2: "MNO",
                  lable: "6",
                  onPressed: () {
                    set();
                  }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NUM(
                  text1: "7",
                  text2: "PQRS",
                  lable: "7",
                  onPressed: () {
                    set();
                  }),
              NUM(
                  text1: "8",
                  text2: "TUV",
                  lable: "8",
                  onPressed: () {
                    set();
                  }),
              NUM(
                  text1: "9",
                  text2: "WXYZ",
                  lable: "9",
                  onPressed: () {
                    set();
                  }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NUM(
                  text1: "*",
                  text2: "",
                  lable: "*",
                  onPressed: () {
                    set();
                  }),
              NUM(
                  text1: "0",
                  text2: "+",
                  lable: "0",
                  onPressed: () {
                    set();
                  }),
              NUM(
                  text1: "#",
                  text2: "",
                  lable: "#",
                  onPressed: () {
                    set();
                  }),
            ],
          ),
        ],
      ),
    );
  }
}


class NUM extends StatelessWidget {
  const NUM({Key? key, required this.text1, required this.text2, required this.lable, required this.onPressed}) : super(key: key);

  final String text1;
  final String text2;
  final String lable;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.fromLTRB(25, 5, 25, 5),
      child: Container(
        color: Colors.white,
        child: TextButton(
          style: ButtonStyle(),
          child: Column(
            children: [
              Text(
                text1,
                style: const TextStyle(fontSize: 40, color: Colors.black),
              ),
              Text(
                text2,
                style: TextStyle(color: Colors.black26),
              ),
            ],
          ),
          onPressed: () {
            onPressed();

            if (number.length > 10) {
              print("THE NUMBER IS UPPER ${number.length} OUT OF THE RANGE");
              newNumber = number;

              print(newNumber);
            } else {
              if (lable == "1") {
                number = "${number}1";
              }
              if (lable == "2") {
                number = "${number}2";
              }
              if (lable == "3") {
                number = number + "3";
              }
              if (lable == "4") {
                number = number + "4";
              }
              if (lable == "5") {
                number = number + "5";
              }
              if (lable == "6") {
                number = number + "6";
              }
              if (lable == "7") {
                number = number + "7";
              }
              if (lable == "8") {
                number = number + "8";
              }
              if (lable == "9") {
                number = number + "9";
              }
              if (lable == "0") {
                number = number + "0";
              }
            }

          },
        ),
      ),
    );
  }
}
