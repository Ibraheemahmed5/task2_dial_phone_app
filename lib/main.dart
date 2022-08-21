import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task2_dial_phone_app/task2/Contacts%20Page/Contacts_main_Page.dart';
import 'package:task2_dial_phone_app/task2/Contacts%20Page/Contacts_main_Page2.dart';
import 'package:task2_dial_phone_app/task2/Dial_Page/Dial_main_Page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.white,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.light,
  ));

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Uni-coding',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Dial_page(),

      //home: Dial_page(),
    );
  }
}
