import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:pregnancy_helper/screens/signup.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: Get.width,
      height: Get.height,
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(color: Color.fromARGB(195, 71, 1, 83)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: Get.width * .55,
            height: Get.height * .55,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/pregnantbg.jpg"),
                    fit: BoxFit.cover),),
          ),
          Column(children: [Text("Welcome On Board",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.white70,
          ),
          ),
          SizedBox(
            height: 20,
          ),
          Text("We Are Happy To See You Here!",textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.white70
          ),),
          ],
          ),
          Container(
            width: Get.width * .8,
            height: 40,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
         ),
            child: Container(
              width: Get.width*0.6,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color.fromARGB(255, 234, 162, 247),
              ),
              child: TextButton(onPressed: (){
                Get.to (() =>SignUp()) ;
              },
               child: Text("Get Started", 
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              color: Colors.white70,
              ),),),
            ),
            ),
          
        ],
      ),
      
    ),
    );
  }
}
