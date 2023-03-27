import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pregnancy_helper/widgets/settings_card.dart';

class TimelinePage extends StatelessWidget {
  const TimelinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text(
          "My Timeline",
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
      padding:EdgeInsets.all(20),
        alignment: Alignment.topLeft,
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/babybg.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.darken),
          ),
        ),
        
        child: Text(
          "Hello!\nYour due date is on Feb 12, 2023",
          style: TextStyle(
            color: Colors.white70,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

    );
  }
}