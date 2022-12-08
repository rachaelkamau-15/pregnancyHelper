import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pregnancy_helper/screens/dashboard.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  //implementing splashscreen
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 4), ()=>
      Get.to(()=>Dashboard())
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("images/log3bg.jpg"),
          fit: BoxFit.fill,
          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken),
        ),
      ),
    ),
    );
  }
}
