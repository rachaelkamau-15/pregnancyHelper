import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pregnancy_helper/controllers/auth_controller.dart';

import 'package:pregnancy_helper/widgets/settings_card.dart';

import '../controllers/main_controller.dart';
import 'explorepage_card.dart';

class ExploreList extends StatefulWidget {
  final String category;
  const ExploreList({super.key, required this.category});

  @override
  State<ExploreList> createState() => _ExploreListState();
}

class _ExploreListState extends State<ExploreList> {
  var data = {};
  @override
  initState() {
    Future.microtask(() {
      //check if user is new
      setState(() {
        switch (widget.category) {
          case "trackyourprogress":
            data = MainController.to.exploretrackyourprogress;
            break;
          case "medical":
            data = MainController.to.exploremedical;
            break;
          case "nutrition":
            data = MainController.to.explorenutrition;
            break;
          case "fertility":
            data = MainController.to.explorefertility;
            break;
          case "exercises":
            data = MainController.to.exploreexercises;
            break;
          case "communityforums":
            data = MainController.to.explorecommunityforums;
            break;
          default:
            data = MainController.to.exploretrackyourprogress;
            break;
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(195, 71, 1, 83),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Color.fromARGB(195, 71, 1, 83),
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
                child: Icon(Icons.settings),
                backgroundColor: Color.fromARGB(195, 71, 1, 83),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              //SPACE
              SizedBox(
                height: 5,
              ),
              Text(
                "Explore",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),

              //FIRST HORIZONTAL SCROLL
              Container(
                width: Get.width,
                padding: EdgeInsets.all(20),
                child: Wrap(
                    alignment: WrapAlignment.spaceBetween,
                    runSpacing: 20,
                    direction: Axis.horizontal,
                    children: data.entries.map(
                      (e) {
                        //print(e);
                        return ExplorePageCard(
                            item: e.value,
                            width: Get.width * .40,
                            height: Get.width * .40,
                            img: "${e.value["image"]}",
                            title: "${e.value["title"]}");
                      },
                    ).toList()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
