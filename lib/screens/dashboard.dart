import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:pregnancy_helper/controllers/auth_controller.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:pregnancy_helper/viewpage.dart';
import 'package:pregnancy_helper/widgets/Tools_card.dart';
import 'package:pregnancy_helper/widgets/explore_card.dart';
import 'package:pregnancy_helper/widgets/settings_card.dart';
import 'package:pregnancy_helper/widgets/timeline_card.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  void initState() {
    Future.microtask(() {
      //check if user is new
      if (AuthController.to.isNewUser.value) {
        //this is a new user
        SmartDialog.show(builder: (context) {
          return ViewPage();
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
        color:Colors.white),
        onPressed: () {},
        ),
        backgroundColor: Color.fromARGB(195, 71, 1, 83),
        title: Text(
          "Rachael's Timeline",
          style: TextStyle(
              color: Colors.white70, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          InkWell(
            onTap: () {
              Get.to(() => SettingsCard());
            },
            child: Container(
              margin: EdgeInsets.only(
                right: 25,
              ),
              child: CircleAvatar(
                child: Text("RK"),
                backgroundColor: Color.fromARGB(195, 71, 1, 83),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              height: Get.height - 131,
              width: Get.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/babybg.jpg"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.5), BlendMode.darken),
                ),
              ),
              
              child: Text(
                "Based on your information,\nwe've calculated your due date is...\nFeb 12, 2023",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),

      //BOTTOM NAV BAR

      bottomNavigationBar: CurvedNavigationBar(
        height: 75,
        backgroundColor: Color.fromARGB(195, 71, 1, 83),
        color: Color.fromARGB(255, 234, 162, 247),
        animationDuration: Duration(milliseconds: 300),
        onTap: (value) {
          //Respond to Item Press
          if (value == 0) {
            Get.to(() => Dashboard());
          } else if (value == 1) {
            Get.to(() => ExploreCard());
          } else if (value == 2) {
            Get.to(() => ToolsCard());
          } else if (value == 3) {
            Get.to(() => SettingsCard());
          }
        },
        items: [
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          Icon(
            Icons.explore,
            color: Colors.white,
          ),
          Icon(
            Icons.storage,
            color: Colors.white,
          ),
          Icon(
            Icons.settings,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
