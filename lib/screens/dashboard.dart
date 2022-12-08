import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:pregnancy_helper/widgets/Tools_card.dart';
import 'package:pregnancy_helper/widgets/explore_card.dart';
import 'package:pregnancy_helper/widgets/settings_card.dart';
import 'package:pregnancy_helper/widgets/timeline_card.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(195, 71, 1, 83),
        title: Text(
          "Rachael's Timeline",
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(
              right: 25,
            ),
            child: CircleAvatar(
              child: Text("RK"),
              backgroundColor: Color.fromARGB(195, 71, 1, 83),
            ),
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              height: Get.height * 0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage("images/babybg.jpg"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.5), BlendMode.darken),
                ),
              ),
              child: Text(
                "Good Morning\nRachael",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),

      //BOTTOM NAV BAR
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(195, 71, 1, 83),
        selectedItemColor: Color.fromARGB(255, 234, 162, 247),
        unselectedItemColor: Colors.white.withOpacity(0.6),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (value) {
         //Respond to Item Press
         if(value==0){
        Get.to(()=>Dashboard());
         } else if (value==1){
          Get.to(()=>ExploreCard());
         } else if (value==2){
          Get.to(()=>ToolsCard());
         } else if (value==3){
          Get.to(()=>SettingsCard());
         }
         
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Explore"),
          BottomNavigationBarItem(icon: Icon(Icons.storage), label: "Tools"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }
}
