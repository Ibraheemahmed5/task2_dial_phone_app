import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Contacts_main_Page.dart';
import 'Contacts_main_Page2.dart';

class Contacts_part extends StatefulWidget {
  final Color grid;
  final Color list;

  const Contacts_part({
    Key? key,
    required this.grid,
    required this.list,
  }) : super(key: key);

  @override
  State<Contacts_part> createState() => _Contacts_partState();
}

class _Contacts_partState extends State<Contacts_part> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 30, left: 5, bottom: 10),
        child: Row(
          children: [
            const Text(
              "Contacts",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.only(left: 130),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.grid_view, size: 30, color: widget.grid),
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Contacts_Page2()),
                        );
                      });

                    },
                  ),
                  SizedBox(width: 30),
                  IconButton(
                    icon: Icon(
                      Icons.splitscreen,
                      size: 30,
                      color: widget.list,
                    ),
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Contacts_Page()),
                        );
                      });
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
