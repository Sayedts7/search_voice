import 'package:flutter/material.dart';
import 'package:fyp_search_voice/views/home_screen.dart';
import 'package:fyp_search_voice/views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,),
        debugShowCheckedModeBanner: false,

    home: const Splash_Screen(),
    );
  }
}
