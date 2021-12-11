import 'package:flutter/material.dart';


class VS extends StatefulWidget {
  const VS({Key? key}) : super(key: key);

  @override
  _VSState createState() => _VSState();
}

class _VSState extends State<VS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("phone veriifed", style: TextStyle(color: Colors.white),),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Icon(Icons.eleven_mp_outlined,size:80),
      ],
    ),
    );
  }
}
