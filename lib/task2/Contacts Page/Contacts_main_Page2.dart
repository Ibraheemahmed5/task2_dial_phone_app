import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Dial_Page/Dial_main_Page.dart';
import 'Contacts.dart';
import 'ListView.dart';
import 'Models/Container_OF_Contacts.dart';
import 'Models/gridview.dart';
import 'Stack_container.dart';

class Contacts_Page2 extends StatefulWidget {
  const Contacts_Page2({Key? key}) : super(key: key);

  @override
  State<Contacts_Page2> createState() => _Contacts_Page2State();
}

class _Contacts_Page2State extends State<Contacts_Page2> {
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
                children: [
                  Contacts_part(grid: Colors.black,list: Colors.black26),
                  Expanded(
                      child: GridView.builder(
                    itemCount: name.length,
                    itemBuilder: (BuildContext context, int i) {
                      return gridview(number: "${contacts[i]}", name: "${name[i]}",);
                    },
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                  ))
                ],
              ),
              const Stack_container(),
            ],
          ),
        ),
      ),
    );
  }
}


