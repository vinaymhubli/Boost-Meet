import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:vmeet_app/views/home.dart';

class VedioHomeSplashScreen extends StatefulWidget {
  VedioHomeSplashScreen({Key? key}) : super(key: key);

  @override
  State<VedioHomeSplashScreen> createState() => _VedioHomeSplashScreenState();
}

class _VedioHomeSplashScreenState extends State<VedioHomeSplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5),(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>VedioHome()));
    });
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light
        ),
      ),

      
      body: Container(
        height:700,
        width: 400,
        alignment: Alignment.center,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Lottie.asset('assets/splashscreen.json')],
        ),
      ),
    );
  }
}
