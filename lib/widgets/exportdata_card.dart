import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pregnancy_helper/widgets/settings_card.dart';

class ExportData extends StatelessWidget {
  const ExportData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
        color:Colors.white),
        onPressed: () {},
        ),
        title: Text(
          "Export data",
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
                "You will receive an email within 24hours to securely export all your data at your email."),
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
                onPressed: () {
                  
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
                onPressed: () {
            
                },
                child: Text(
                  "CANCEL",
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
              ),
            ),
          ]
      )
      )
    );
  }
}