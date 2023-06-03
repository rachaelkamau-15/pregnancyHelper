import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pregnancy_helper/controllers/auth_controller.dart';
import 'package:pregnancy_helper/screens/dashboard.dart';
import 'package:pregnancy_helper/widgets/settings_card.dart';

class ResetAccount extends StatelessWidget {
  const ResetAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Get.back();
            },
          ),
          elevation: 1,
          title: Text(
            "Reset my account",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color.fromARGB(195, 71, 1, 83),
          actions: [
            // IconButton(
            //   icon: Icon(Icons.settings, color: Colors.white),
            //   onPressed: () {
            //     Get.to(() => SettingsCard());
            //   },
            // ),
          ],
        ),
        body: Container(
            child: ListView(children: [
          Text("Are you sure? Your current data will be cleared."),
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
                await AuthController.to
                    .updateUserData("", "", "", "", "", "", userIsNew: true);
                Get.offAll(Dashboard());
              },
              child: Text(
                "OKAY ",
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
              onPressed: () {},
              child: Text(
                "CANCEL",
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
            ),
          ),
        ])));
  }
}
