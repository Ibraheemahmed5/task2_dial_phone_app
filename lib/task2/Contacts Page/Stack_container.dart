import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Stack_container extends StatelessWidget {
  const Stack_container({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.only(bottom: 20),
        height: 100,
        width: 180,
        child: Card(
          color: Colors.white,
          elevation: 30,
          shadowColor: Colors.black,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.all(
                  Radius.elliptical(30, 30))

          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  iconSize: 30,
                  icon: const Icon(
                    Icons.groups_rounded,
                    color: Colors.black26,
                  ),
                  // the method which is called
                  // when button is pressed
                  onPressed: () {},
                ),
                IconButton(
                  iconSize: 30,
                  icon: const Icon(
                    Icons.settings_outlined,
                    color: Colors.black26,
                  ),
                  // the method which is called
                  // when button is pressed
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
