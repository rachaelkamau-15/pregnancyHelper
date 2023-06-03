import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:intl/intl.dart';
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

import '../controllers/main_controller.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final PageController _pageController = PageController();
  String title = "";

  @override
  void initState() {
    Future.microtask(() {
      //check if user is new
      if (AuthController.to.firebaseUserData["isNewUser"]) {
        //this is a new user
        SmartDialog.show(
            tag: "GeneralInfo",
            builder: (context) {
              return ViewPage();
            });
      }
      setState(() {
        title = "${AuthController.to.firebaseUserData["name"]}'s Timeline";
      });
    });
    AuthController.to.firebaseUserData.listen((p0) {
      setState(() {
        title = "${p0["name"]}'s Timeline";
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(195, 71, 1, 83),
      appBar: AppBar(
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back, color: Colors.white),
        //   onPressed: () {},
        // ),
        backgroundColor: Color.fromARGB(195, 71, 1, 83),
        title: Text(
          "$title",
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
                child: Icon(Icons.settings, color: Colors.white),
                backgroundColor: Color.fromARGB(104, 55, 1, 65),
              ),
            ),
          ),
        ],
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (value) {
          if (value == 0) {
            setState(() {
              title =
                  "${AuthController.to.firebaseUserData["name"]}'s Timeline";
            });
          } else if (value == 1) {
            setState(() {
              title = "Explore";
            });
          } else if (value == 2) {
            setState(() {
              title = "Tools";
            });
          }
        },
        children: [
          Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    height: Get.height - 170,
                    width: Get.width,
                    padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/babybg.jpg"),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.5), BlendMode.darken),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Based on your information,",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "we've calculated your due date is...",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "${(AuthController.to.firebaseUserData["edd"] == "") ? "" : DateFormat.yMMMMd().format(DateFormat.yMd().parse(AuthController.to.firebaseUserData["edd"]))}",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: Theme.of(context)
                                    .textTheme
                                    .displaySmall
                                    ?.fontSize ??
                                12,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          ExploreCard(),
          ToolsCard(),
        ],
      ), //BOTTOM NAV BAR

      bottomNavigationBar: CurvedNavigationBar(
        height: 75,
        backgroundColor: Colors.transparent,
        color: Color.fromARGB(255, 234, 162, 247),
        animationDuration: Duration(milliseconds: 300),
        onTap: (value) {
          //Respond to Item Press
          // if (value == 0) {
          //   Get.to(() => Dashboard());
          // } else if (value == 1) {
          //   Get.to(() => ExploreCard());
          // } else if (value == 2) {
          //   Get.to(() => ToolsCard());
          // } else if (value == 3) {
          //   Get.to(() => SettingsCard());
          // }
          _pageController.animateToPage(value,
              duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
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
          // Icon(
          //   Icons.settings,
          //   color: Colors.white,
          // ),
        ],
      ),
    );
  }
}
