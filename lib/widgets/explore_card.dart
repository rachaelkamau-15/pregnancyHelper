import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pregnancy_helper/controllers/auth_controller.dart';
import 'package:pregnancy_helper/widgets/explore_list.dart';

import 'package:pregnancy_helper/widgets/settings_card.dart';

import '../controllers/main_controller.dart';
import 'explorepage_card.dart';

class ExploreCard extends StatefulWidget {
  const ExploreCard({super.key});

  @override
  State<ExploreCard> createState() => _ExploreCardState();
}

class _ExploreCardState extends State<ExploreCard> {
  @override
  initState() {
    Future.microtask(() {
      //check if user is new

      MainController.to.exploretrackyourprogress
          .bindStream(MainController.to.exploreStream("trackyourprogress"));
      MainController.to.exploremedical
          .bindStream(MainController.to.exploreStream("medical"));
      MainController.to.explorenutrition
          .bindStream(MainController.to.exploreStream("nutrition"));
      MainController.to.explorefertility
          .bindStream(MainController.to.exploreStream("fertility"));
      MainController.to.exploreexercises
          .bindStream(MainController.to.exploreStream("exercises"));
      MainController.to.explorecommunityforums
          .bindStream(MainController.to.exploreStream("communityforums"));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
              "Explore\nAll You Need to Know",
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Track Your Progress",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.to(() => ExploreList(
                          category: "trackyourprogress",
                        ));
                  },
                  child: Text(
                    "More",
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            //FIRST HORIZONTAL SCROLL
            Obx(() {
              return Container(
                height: 160,
                width: Get.width,
                padding: EdgeInsets.all(20),
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children:
                        MainController.to.exploretrackyourprogress.entries.map(
                      (e) {
                        //print(e);
                        return ExplorePageCard(
                            item: e.value,
                            width: 130,
                            height: 130,
                            img: "${e.value["image"]}",
                            title: "${e.value["title"]}");
                      },
                    ).toList()),
              );
            }),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Nutrition",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.to(() => ExploreList(
                          category: "nutrition",
                        ));
                  },
                  child: Text(
                    "More",
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            //SECOND HORIZONTAL SCROLL
            Obx(() {
              return Container(
                height: 160,
                width: Get.width,
                padding: EdgeInsets.all(20),
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: MainController.to.explorenutrition.entries
                        .map(
                          (e) => ExplorePageCard(
                              item: e.value,
                              width: 130,
                              height: 130,
                              img: "${e.value["image"]}",
                              title: "${e.value["title"]}"),
                        )
                        .toList()),
              );
            }),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Medical",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.to(() => ExploreList(
                          category: "medical",
                        ));
                  },
                  child: Text(
                    "More",
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            //THRID HORIZONTAL SCROLL
            Obx(() {
              return Container(
                height: 160,
                width: Get.width,
                padding: EdgeInsets.all(20),
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: MainController.to.exploremedical.entries
                        .map(
                          (e) => ExplorePageCard(
                              item: e.value,
                              width: 130,
                              height: 130,
                              img: "${e.value["image"]}",
                              title: "${e.value["title"]}"),
                        )
                        .toList()),
              );
            }),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Exercises",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.to(() => ExploreList(
                          category: "exercises",
                        ));
                  },
                  child: Text(
                    "More",
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            //FOURTH HORIZONTAL SCROLL

            Obx(() {
              return Container(
                height: 160,
                width: Get.width,
                padding: EdgeInsets.all(20),
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: MainController.to.exploreexercises.entries
                        .map(
                          (e) => ExplorePageCard(
                              item: e.value,
                              width: 130,
                              height: 130,
                              img: "${e.value["image"]}",
                              title: "${e.value["title"]}"),
                        )
                        .toList()),
              );
            }),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Fetility",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.to(() => ExploreList(
                          category: "fertility",
                        ));
                  },
                  child: Text(
                    "More",
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            //FIVTH HORIZONTAL SCROLL
            Obx(() {
              return Container(
                height: 160,
                width: Get.width,
                padding: EdgeInsets.all(20),
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: MainController.to.explorefertility.entries
                        .map(
                          (e) => ExplorePageCard(
                              item: e.value,
                              width: 130,
                              height: 130,
                              img: "${e.value["image"]}",
                              title: "${e.value["title"]}"),
                        )
                        .toList()),
              );
            }),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Community Forums",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.to(() => ExploreList(
                          category: "communityforums",
                        ));
                  },
                  child: Text(
                    "More",
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            //SIXTH HORIZONTAL SCROLL
            Obx(() {
              return Container(
                height: 160,
                width: Get.width,
                padding: EdgeInsets.all(20),
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: MainController.to.explorecommunityforums.entries
                        .map(
                          (e) => ExplorePageCard(
                              item: e.value,
                              width: 130,
                              height: 130,
                              img: "${e.value["image"]}",
                              title: "${e.value["title"]}"),
                        )
                        .toList()),
              );
            }),
          ],
        ),
      ),
    );
  }
}
