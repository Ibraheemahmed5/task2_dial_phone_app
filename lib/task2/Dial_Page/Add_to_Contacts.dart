import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Dial_main_Page.dart';

class Add_contacts extends StatefulWidget {
  const Add_contacts({
    Key? key,
  }) : super(key: key);

  @override
  State<Add_contacts> createState() => _Add_contactsState();
}

class _Add_contactsState extends State<Add_contacts> {
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
                setState(() {
                  if (number.length >= 11) {
                    contacts.add(number);
                    name.add("NEW Contacts ${name.length + 1} ");
                    print(
                        "NEW Contacts ${name.length + 1} At number ${number}");
                    number = "";
                  } else {
                    print("The number is short");
                  }
                });
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
