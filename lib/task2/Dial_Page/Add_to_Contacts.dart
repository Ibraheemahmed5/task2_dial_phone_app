import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'Dial_main_Page.dart';

class Add_contacts extends StatelessWidget {
  const Add_contacts({Key? key, required this.set}) : super(key: key);
  final Function set;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 50, bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton.icon(
              onPressed: () {
                set();

                if (number.length >= 11) {
                  contacts.add(number);
                  Alert(
                    context: context,
                    type: AlertType.success,
                    title: "successful Add NEW Contacts",
                  ).show();


                  print("NEW Contacts ${name.length + 1} At number ${number}");
                  name.add("NEW Contacts ${name.length + 1} ");
                  number = "";
                } else {
                  print("The numbers are ${number.length} is short ");
                  Alert(

                    context: context,
                    type: AlertType.warning,
                    title: "The numbers are short ",
                  ).show();
                }
              },
              icon: const Icon(
                Icons.add,
                size: 20.0,
                color: Color.fromRGBO(6, 223, 120, 1),
              ),
              label: const Text(
                "Add to Contacts",
                style: TextStyle(
                    color: Color.fromRGBO(6, 223, 120, 1),
                    fontWeight: FontWeight.w700,
                    fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
