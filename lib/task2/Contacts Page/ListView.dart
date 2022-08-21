import 'package:flutter/cupertino.dart';

import '../Dial_Page/Dial_main_Page.dart';
import 'Models/Container_OF_Contacts.dart';

class listview1 extends StatefulWidget {
  const listview1({Key? key}) : super(key: key);

  @override
  State<listview1> createState() => _listview1State();
}

class _listview1State extends State<listview1> {
  @override

  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: ListView.builder(
          shrinkWrap: false,
          itemCount: name.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int i) {
            return Container(child: Container1(number: "${contacts[i]}", name: "${name[i]}",));

          },

        ),
      ),
    );
  }
}
