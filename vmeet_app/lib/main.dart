
import 'package:flutter/material.dart';
import 'package:vmeet_app/views/splash_screen.dart';



void main(List<String> args) {
 
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Vedio Conferance App",
      debugShowCheckedModeBanner: false,
      home: VedioHomeSplashScreen(),
    );
  }
}
