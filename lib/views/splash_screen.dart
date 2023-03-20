import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fyp_search_voice/views/home_screen.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
      Timer(Duration(seconds: 2), () {

        Navigator.push(context, MaterialPageRoute(builder: (context)=> home_Screen() ));
      });

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xffff7f2b),
      body: Container(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Image(image: AssetImage('assets/splash.png'),),

                 Text("Search Voice\nThrough Voice", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
              ],

        ),
      ),
    );
  }
}
