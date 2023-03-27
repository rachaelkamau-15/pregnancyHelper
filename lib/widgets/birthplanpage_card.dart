import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'settings_card.dart';

class BirthPlanPage extends StatelessWidget {
  const BirthPlanPage({super.key});

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
          "Birth Plan",
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
        color: Color.fromARGB(255, 234, 162, 247),
        child: ListView(
          children: [
            Text(
              "Personal Details",
              style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(195, 71, 1, 83),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(Icons.check_box_outline_blank),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Full name",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.check_box_outline_blank,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Partner's name",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Icon(
                  Icons.check_box_outline_blank,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Doctor's name",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Icon(
                  Icons.check_box_outline_blank,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Hospital name",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 10,
              thickness: 1,
            ),
            Text(
              "My Delivery is planned as:",
              style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(195, 71, 1, 83),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(Icons.check_box_outline_blank),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Vaginal",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.check_box_outline_blank,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "C-section",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Icon(
                  Icons.check_box_outline_blank,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Water birth",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 10,
              thickness: 1,
            ),
            Text(
              "During labor, I'd like:",
              style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(195, 71, 1, 83),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(Icons.check_box_outline_blank),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Minimum interruptions",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.check_box_outline_blank,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Minimum vaginal examinations",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Icon(
                  Icons.check_box_outline_blank,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Hospital staff limited to my own\ndoctor and nurses",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Icon(
                  Icons.check_box_outline_blank,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "My Partner to be present ",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 10,
              thickness: 1,
            ),
            Text(
              "Fetal monitoring to be:",
              style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(195, 71, 1, 83),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(Icons.check_box_outline_blank),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Continuos",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.check_box_outline_blank,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Intermittent",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Icon(
                  Icons.check_box_outline_blank,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Internal",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Icon(
                  Icons.check_box_outline_blank,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "External",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 10,
              thickness: 1,
            ),
            Text(
              "During delivery, I'd like to:",
              style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(195, 71, 1, 83),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(Icons.check_box_outline_blank),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Push spontaneously",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.check_box_outline_blank,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Push as directed",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 10,
              thickness: 1,
            ),
            Text(
              "In case of C-section, I'd like:",
              style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(195, 71, 1, 83),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(Icons.check_box_outline_blank),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "A second opinion",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.check_box_outline_blank,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "My partner to remain with me\nthe entire time",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 10,
              thickness: 1,
            ),
            Text(
              "I'd like to hold the baby:",
              style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(195, 71, 1, 83),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(Icons.check_box_outline_blank),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Immediately after delivery",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.check_box_outline_blank,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "After suctioning",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Icon(
                  Icons.check_box_outline_blank,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "After weighing",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Icon(
                  Icons.check_box_outline_blank,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "After being wiped clean\nand swaddled",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 10,
              thickness: 1,
            ),
            Text(
              "I'd like my family members:",
              style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(195, 71, 1, 83),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(Icons.check_box_outline_blank),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "To join me and baby\nimmediately after delivery",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.check_box_outline_blank,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "To join me and baby\nin the room later",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Icon(
                  Icons.check_box_outline_blank,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "To have unlimited visits\nafter birth",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 10,
              thickness: 1,
            ),
            Text(
              "I'd like baby's medical exams and procedures:",
              style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(195, 71, 1, 83),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(Icons.check_box_outline_blank),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Given in my presence",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.check_box_outline_blank,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Given in my partner's presence",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 10,
              thickness: 1,
            ),
            Text(
              "I'd like baby's first bath done:",
              style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(195, 71, 1, 83),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(Icons.check_box_outline_blank),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "In my presence",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.check_box_outline_blank,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "In my partner's presence",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Icon(
                  Icons.check_box_outline_blank,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "By me",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Icon(
                  Icons.check_box_outline_blank,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "By my partner",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 10,
              thickness: 1,
            ),
            Text(
              "After birth,I'd like to stay in the hospital:",
              style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(195, 71, 1, 83),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(Icons.check_box_outline_blank),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "As long as possible",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.check_box_outline_blank,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "As briefly as possible",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 10,
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }
}
