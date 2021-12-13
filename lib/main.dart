import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'phone_verify_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'data_base.dart' as db;
import 'entities/user.dart';
import 'signup_screen.dart';

void main() async{
 db.insertUser("0522258899", "davy", "gov");
//  db.userRegistration("0522258899", "davy", "gov");

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'home page',
      debugShowCheckedModeBanner: false,
      home:Home(),
    );
  }
}