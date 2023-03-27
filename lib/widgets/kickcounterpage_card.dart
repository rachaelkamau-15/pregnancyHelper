import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pregnancy_helper/widgets/settings_card.dart';

class KickCounterPage extends StatelessWidget {
  const KickCounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
         leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
        color:Colors.white),
        onPressed: () {
          Navigator.pop(context);
          },
        ),
        title: Text(
          "Kick counter",
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
        color: Color.fromARGB(255, 234, 162, 247),
        child: ListView(
          children: [
            Text(
                "Record how long it takes to get to 5 kicks or movements when your baby is most active."),
            SizedBox(
              height: 50,
            ),
             Row(
              children: [
                Icon(
                  Icons.alarm_on_rounded,
                  color: Color.fromARGB(195, 71, 1, 83),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Kick History",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
      ),
      ),
    );
  }
}