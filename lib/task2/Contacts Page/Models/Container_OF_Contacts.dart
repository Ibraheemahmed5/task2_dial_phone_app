import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Container1 extends StatelessWidget {
  const Container1({
    Key? key,
    required this.number,
    required this.name,
  }) : super(key: key);
  final String name;
  final String number;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
          color: Colors.white,
          height: 70,
          width: 400,
          child: Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 5, right: 5),
            child: Stack(
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                        backgroundImage: AssetImage('photo/dualipa.png'),
                        maxRadius: 40),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            name,
                            style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            number,
                            style: const TextStyle(
                                color: Colors.black54,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    color: Color.fromRGBO(6, 223, 120, 1),
                    icon: const Icon(
                      Icons.phone,
                      size: 35,
                    ),
                    onPressed: () {},
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
