import 'dart:js_util';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pregnancy_helper/controllers/auth_controller.dart';
import 'package:pregnancy_helper/widgets/changepassword_card.dart';
import 'package:pregnancy_helper/widgets/delete_card.dart';
import 'package:pregnancy_helper/widgets/exportdata_card.dart';
import 'package:pregnancy_helper/widgets/resetaccount_card.dart';

import '../controllers/auth_controller.dart';

class SettingsCard extends StatelessWidget {
  const SettingsCard({super.key});

  @override
  Widget build(BuildContext context) {
    bool valNotify1 = true;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
        color:Colors.white),
        onPressed: () {
          Navigator.pop(context);
        },
        ),
        title: Text("Settings"),
        backgroundColor: Color.fromARGB(195, 71, 1, 83),
        actions: [
          TextButton(
            onPressed: () async {
              await AuthController.to.signOut();
            },
            child: Text(
              "Log out",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: 
      Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        color:Color.fromARGB(255, 234, 162, 247),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(children: [
            Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Account",
                  style: TextStyle(
                     
                      fontSize: 20,
                      color: Color.fromARGB(195, 71, 1, 83),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 10,
              thickness: 1,
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(bottom: 3),
                labelText: "First Name",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                filled: true,
                hintStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(bottom: 3),
                  labelText: "Last Name",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  filled: true,
                  hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(bottom: 3),
                  labelText: "Email",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  filled: true,
                  hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(bottom: 3),
                labelText: "Password",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                filled: true,
                hintStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 80),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  backgroundColor: Color.fromARGB(195, 71, 1, 83),
                ),
                onPressed: () {},
                child: Text(
                  "Save",
                  style: TextStyle(fontSize: 15, color: Colors.white70),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 80),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  backgroundColor: Color.fromARGB(195, 71, 1, 83),
                ),
                onPressed: () {
                  Get.to(() => ChangePassword());
                },
                child: Text(
                  "Change Password",
                  style: TextStyle(fontSize: 15, color: Colors.white70),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  "Notifications",
                  style: TextStyle(
                      
                      fontSize: 20,
                      color: Color.fromARGB(195, 71, 1, 83),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 10,
              thickness: 1,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Email Settings",
                  style: TextStyle(
                    color:Color.fromARGB(195, 71, 1, 83),
                    fontWeight:FontWeight.bold,
                    fontSize: 18,
                    
                  ),
                ),
                Transform.scale(
                  scale: 0.7,
                  child: CupertinoSwitch(
                    activeColor:Color.fromARGB(195, 71, 1, 83),
                    trackColor:Colors.white,
                    value: true,
                    onChanged: (bool val) {},
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Data",
                  style: TextStyle(fontSize: 20, color:Color.fromARGB(195, 71, 1, 83),fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 10,
              thickness: 1,
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 80),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  backgroundColor: Color.fromARGB(195, 71, 1, 83),
                ),
                onPressed: () {
                   Get.to(() => ExportData());
                },
                child: Text(
                  "Export Data",
                  style: TextStyle(fontSize: 15, color: Colors.white70),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 80),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  backgroundColor: Color.fromARGB(195, 71, 1, 83),
                ),
                onPressed: () {
                  Get.to(() => ResetAccount());
                },
                child: Text(
                  "Reset Account",
                  style: TextStyle(fontSize: 15, color: Colors.white70),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 80),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  backgroundColor: Color.fromARGB(195, 71, 1, 83),
                ),
                onPressed: () {
                  Get.to(() => DeleteAccount());
                },
                child: Text(
                  "Delete Account",
                  style: TextStyle(fontSize: 15, color: Colors.white70),
                ),
              ),
            ),
          ]
          ),
        ),
      ),
    );
  }
}
