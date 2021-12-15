import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'user_db.dart' as udb;
import 'mongo_data_base.dart' as mDB;
import 'signup_screen.dart';


void toStart() async{
 await mDB.MongoDatabase.connect();
 var u=await udb.search("0542253988");
 debugPrint(u.first_name);



}


void main() async{
 await mDB.MongoDatabase.connect();
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