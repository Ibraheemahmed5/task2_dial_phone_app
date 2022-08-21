import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task2_dial_phone_app/task2/Contacts%20Page/ListView.dart';
import 'package:task2_dial_phone_app/task2/Contacts%20Page/Stack_container.dart';
import 'package:task2_dial_phone_app/task2/Dial_Page/Dial_main_Page.dart';

import 'Contacts.dart';

class Contacts_Page extends StatefulWidget {
  const Contacts_Page({Key? key}) : super(key: key);

  @override
  State<Contacts_Page> createState() => _Contacts_PageState();
}

class _Contacts_PageState extends State<Contacts_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            tooltip: 'Menu Icon',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Dial_page()),
              );

              setState(() {});
            },
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Stack(
            children: [
              Column(
                children: const [Contacts_part(grid: Colors.black26,list: Colors.black,), listview1()],
              ),
              const Stack_container(),
            ],
          ),
        ),
      ),
    );
  }
}
