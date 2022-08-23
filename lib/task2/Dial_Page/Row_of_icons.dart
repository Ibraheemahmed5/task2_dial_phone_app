import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task2_dial_phone_app/task2/Dial_Page/Dial_main_Page.dart';

import '../Contacts Page/Contacts_main_Page.dart';

class ROW extends StatelessWidget {

  const ROW({Key? key, required this.set1}) : super(key: key);
  final Function set1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 50, bottom: 60, left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(
                Icons.groups_rounded,
                size: 35,
              ),
              onPressed: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Contacts_Page()),
                  );

              },
            ),
            Container(
              width: 85,
              height: 85,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(6, 223, 120, 1),
                  borderRadius:
                  BorderRadiusDirectional.all(Radius.elliptical(30, 30))),
              child: IconButton(
                color: Colors.white,
                icon: const Icon(
                  Icons.phone,
                  size: 35,
                ),
                onPressed: () {},
              ),
            ),
            GestureDetector(
              onTap: (){
              },
              child: IconButton(
                icon:  const Icon(
                  Icons.backspace_outlined,
                  size: 35,
                ),
                onPressed: () {
                  set1();

                    number = number.substring(0, number.length - 1);

                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

