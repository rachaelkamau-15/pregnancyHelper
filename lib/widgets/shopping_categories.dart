import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pregnancy_helper/widgets/babycarecard.dart';
import 'package:pregnancy_helper/widgets/bottlefeeding_card.dart';
import 'package:pregnancy_helper/widgets/breastfeeding_card.dart';
import 'package:pregnancy_helper/widgets/clothing_card.dart';
import 'package:pregnancy_helper/widgets/furniture_card.dart';
import 'package:pregnancy_helper/widgets/settings_card.dart';
import 'package:pregnancy_helper/widgets/travelpage_card.dart';

import 'changingpage_card.dart';

class ShoppingCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          elevation: 1,
          title: Text(
            "Shopping Categories",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color.fromARGB(195, 71, 1, 83),
          actions: [
            IconButton(
              icon: Icon(Icons.settings, color: Colors.white),
              onPressed: () {
                Get.to(() => SettingsCard());
              },
            ),
          ],
        ),
        body: Container(
          padding: EdgeInsets.only(left: 16, top: 25, right: 16),
          color: Colors.white,
          child: ListView(children: [
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/babycare.webp"),
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => BabyCare());
                  },
                  child: Text(
                    "Baby Care",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/bottlefeeding.jpg"),
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => BOttleFeeding());
                  },
                  child: Text(
                    "Bottle feeding",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/breastfeeding.jpg"),
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => BreastFeeding());
                  },
                  child: Text(
                    "Breastfeeding",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/changing.jpg"),
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => ChangingPage());
                  },
                  child: Text(
                    "Changing",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/clothing.png"),
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => ClothingPage());
                  },
                  child: Text(
                    "Clothing",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/furniture.jpg"),
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => FurniturePage());
                  },
                  child: Text(
                    "Furniture",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/travel.png"),
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => TravelPage());
                  },
                  child: Text(
                    "Travel",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ]),
        ));
  }
}
