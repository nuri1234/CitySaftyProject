import 'package:flutter/material.dart';
import 'home_screen.dart';
//import 'phone_verify_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'home page',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}