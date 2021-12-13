import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:convert';
import 'entities/user.dart';


Future<List<user>> getMethod() async {
  var url = "https://citysaftyweb.000webhostapp.com/getData.php";
  http.Response res = await http.get(Uri.parse(url));
  var users= <user>[];
  if(res.statusCode==200){
    //var data = jsonEncode(res.body);
    var data=jsonDecode(res.body);
    for(var userJson in data){
      users.add(user.fromJason(userJson));
    }
    //debugPrint(data.toString());
  }
  else{
    debugPrint("statusCode != 200");
  }
  //debugPrint(users.toString());
  return users;
}
void printList(){
  List<user> _users=<user>[];
  getMethod().then((value) {
    _users.addAll(value);
    debugPrint("here");
    for(int i=0;i<_users.length ;i++){

      debugPrint(_users[i].phone);}
  });

}

Future<user> getUserByphon(String phone) async{
  List<user> _users=<user>[];
  user us=user("X","X","");

   await getMethod().then((value) {
    _users.addAll(value);
    debugPrint("here");
    for(int i=0;i<_users.length ;i++){
      if(phone==_users[i].phone){
        debugPrint(_users[i].phone);
        us= _users[i];
      }


    }
  });

  return us;
}


 void insertUser(String phone, String fName,String lName) async{
   Map data = {'phone': phone,'first_name':fName,'last_name':lName,};

  var url="https://citysaftyweb.000webhostapp.com/insertUser.php";
  http.Response res = await http.post(Uri.parse(url),
      headers: { "Content-Type": "application/json; charset=utf-8",},
      body: json.encode(data),
  );


  if(res.statusCode==201){
    debugPrint("Successfully inserted");

  }
  else {
    debugPrint("Error with insert");
    debugPrint(res.statusCode.toString());
    debugPrint(res.body);


  }

}



Future userRegistration(String phone, String fName,String lName) async{



  // SERVER API URL
  var url = 'https://citysaftyweb.000webhostapp.com/insertUser.php';

  // Store all data with Param Name.
  var  data = {'phone': phone,'first_name':fName,'last_name':lName,};

  // Starting Web API Call.
  try {
    var response = await http.post(Uri.parse(url), body: json.encode(data));

    // Getting Server response into variable.
    var message = jsonDecode(response.body);
    debugPrint(message.toString());
  }

  catch(e){
    debugPrint(e.toString());

  }

  // If Web call Success than Hide the CircularProgressIndicator.

  }