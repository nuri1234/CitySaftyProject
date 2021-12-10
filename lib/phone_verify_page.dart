import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import 'colors.dart' as col;
import 'texts.dart' as tx;
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';



class PhoneVerify extends StatefulWidget {
  const PhoneVerify({Key? key}) : super(key: key);

  @override
  _PhoneVerifyState createState() => _PhoneVerifyState();
}

class _PhoneVerifyState extends State<PhoneVerify> {
  TextEditingController _phone= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: col.app_colors.background,
      body: Container(
        padding: const EdgeInsets.only(top:30,left: 50,right: 30),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50,),
              Text(tx.app_texts.EnterPhon,
                style: GoogleFonts.asset(
                  fontSize: 20,
                  color: col.app_colors.explaneText,
                  fontWeight: FontWeight.w100,
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: col.app_colors.buttom_shadow,
                      offset: Offset(1.0, 1.0),
                    ),

                  ],

                ),

              ),
              SizedBox(height: 40,),
              TextField(
               decoration: InputDecoration(
               hintText: "phone number",
               prefix: Padding(
               padding: EdgeInsets.all(4),
               child: Text("+972"),
               ) ),
                maxLength: 12,
                keyboardType: TextInputType.number,
                controller: _phone,
              ),
              ElevatedButton(
                onPressed:(){
                  debugPrint(_phone.text);
                //  Navigator.of(context).push(MaterialPageRoute(builder: (c)=>OTP(
                   // phone:_controller.text,
                    //codeDigits: dialCodeDigits,
                 // )));

                } ,
                child: Text('next', style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold ),),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
