import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pregnancy_helper/widgets/settings_card.dart';

import '../controllers/auth_controller.dart';

class DeleteAccount extends StatelessWidget {
  const DeleteAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text(
          "Delete my account",
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
        child: ListView(
          children: [
            Text(
                "Are you sure? This will permanently delete your account and data associated with Genesis Pregnancy Helper."),
            SizedBox(
              height: 50,
            ),
            Center(
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 80),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  backgroundColor: Color.fromARGB(195, 71, 1, 83),
                ),
                onPressed: () async {
                 await AuthController.to.signOut();
                },
                child: Text(
                  "Permanently Delete ",
                  style: TextStyle(fontSize: 16, color: Colors.white70),
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
                  Get.back();
                },
                child: Text(
                  "Cancel",
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}
