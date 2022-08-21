import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class gridview extends StatelessWidget {
  const gridview({
    Key? key,
    required this.name,
    required this.number,
  }) : super(key: key);
  final String name;
  final String number;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadiusDirectional.all(Radius.elliptical(30, 30))),
          elevation: 3,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    const CircleAvatar(
                        backgroundImage: AssetImage('photo/dualipa.png'),
                        maxRadius: 30),
                    IconButton(
                      color: Color.fromRGBO(6, 223, 120, 1),
                      icon: const Icon(
                        Icons.phone,
                        size: 35,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  number,
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
