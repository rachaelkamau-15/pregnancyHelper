import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pregnancy_helper/widgets/settings_card.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key, required this.item});

  final Map item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(195, 71, 1, 83),
      appBar: AppBar(
        title: Text("Explore View"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Color.fromARGB(195, 71, 1, 83),
        actions: [
          InkWell(
            onTap: () {
              Get.to(() => SettingsCard());
            },
            child: Container(
              margin: EdgeInsets.only(
                right: 25,
              ),
              child: CircleAvatar(
                child: Icon(Icons.settings),
                backgroundColor: Color.fromARGB(195, 71, 1, 83),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        //margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                item["image"],
                width: Get.width,
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  item["title"],
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Text(
                  item["content"],
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
