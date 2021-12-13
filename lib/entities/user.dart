import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:convert';

class user{
  String phone="";
  String first_name="";
  String last_name="";

  user(this.phone,this.first_name,this.last_name);

  user.fromJason(Map<String,dynamic> json){
     phone=json['phone'];
     first_name=json['first_name'];
     last_name=json['last_name'];
  }


}