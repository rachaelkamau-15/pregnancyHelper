import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pregnancy_helper/widgets/settings_card.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
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
        elevation: 1,
        title: Text(
          "Change password",
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
      
      body: SingleChildScrollView(
        child: Container(
         
          child: Column(children: [
            SizedBox( height:10),
            TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                fillColor: Color.fromARGB(255, 234, 162, 247),
                filled: true,
                hintText: "Current password",
                hintStyle: TextStyle(color: Color.fromARGB(195, 71, 1, 83)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.black),
                ),
                fillColor: Color.fromARGB(255, 234, 162, 247),
                filled: true,
                hintText: "New password",
                hintStyle: TextStyle(
                  color: Color.fromARGB(195, 71, 1, 83),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.black),
                ),
                fillColor: Color.fromARGB(255, 234, 162, 247),
                filled: true,
                hintText: "Confirm new password",
                hintStyle: TextStyle(
                  color: Color.fromARGB(195, 71, 1, 83),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: Get.width * .5,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    width: Get.width * 0.6,
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 234, 162, 247),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "SUBMIT",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(195, 71, 1, 83),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
