import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';


class LoginScreen extends StatefulWidget{
  const LoginScreen({Key? key}) : super(key: key);


  @override
  _LoginScreenState createState() => _LoginScreenState();
}

void showConsoleUsingPrint(){
  debugPrint('Forgot password pressed');
}




class _LoginScreenState extends State<LoginScreen>{
  bool isRememberMe=false;

  Widget buildUserNum(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'number',
          style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]
          ),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.number,
            style: TextStyle(
                color: Colors.black87
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                    Icons.person,
                    color: Color(0xff5ac18e)
                ),
                hintText: 'user number',
                hintStyle: TextStyle(
                    color: Colors.black38
                )
            ),
          ),
        )

      ],
    );


  }

  Widget buildPassword(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'password',
          style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]
          ),
          height: 60,
          child: TextField(
            obscureText: true,
            style: TextStyle(
                color: Colors.black87
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                    Icons.lock_open,
                    color: Color(0xff5ac18e)
                ),
                hintText: 'password',
                hintStyle: TextStyle(
                    color: Colors.black38
                )
            ),
          ),
        )

      ],
    );


  }

  Widget buildForgotPassBtn(){
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () =>showConsoleUsingPrint(),


        child: Text(
          'Forgot password?',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),

        ),
      ),
    );

  }

  Widget BuldRememberCb(){
    return Container(
      height: 20,
      child: Row(
        children: <Widget>[
          Theme(data: ThemeData(unselectedWidgetColor: Colors.white),
              child: Checkbox(
                value: isRememberMe,
                checkColor: Colors.green,
                activeColor: Colors.white,
                onChanged: (value){
                  setState(() {
                    isRememberMe = value!;
                  });
                },
              )
          ),
          Text(
            'Remember me',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),

          )
        ],
      ),

    );


  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle> (
        value: SystemUiOverlayStyle.light,
        child: Stack(
          children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xff5ac18e),
                        Color(0xff5ac18e),
                        Color(0xff5ac18e),
                        Color(0xff5ac18e),
                      ]
                  )
              ),
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 120
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Sing in',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 50),
                    buildUserNum(),
                    SizedBox(height: 20),
                    buildPassword(),
                    buildForgotPassBtn(),
                    BuldRememberCb(),

                  ],
                ) ,
              ),
            )
          ],
        ),

      ),



    );

  }



}




