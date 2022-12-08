import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pregnancy_helper/widgets/progress_card.dart';

import 'community_card.dart';
import 'exercises_card.dart';
import 'fertility_card.dart';
import 'medical_card.dart';
import 'nutrition_card.dart';

class ExploreCard extends StatelessWidget {
  const ExploreCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(195, 71, 1, 83),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(195, 71, 1, 83),
        actions: [
          Container(
            margin: EdgeInsets.only(
              right: 25,
            ),
            child: CircleAvatar(
              child: Text("RK"),
              backgroundColor: Color.fromARGB(195, 71, 1, 83),
            ),
          ),
        ],
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
          //SPACE
              SizedBox(
                height: 5,
              ),
              Text(
                "Explore\nAll You Need to Know",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20,),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Track Your Progress",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,),
                ),
                
              ),
              //FIRST HORIZONTAL SCROLL
              Container(
                height: 160,
                width: Get.width,
                padding: EdgeInsets.all(20),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  
                  children: [
                    //CONTAINER WITH AN IMAGE AND TEXT
                    ProgressCard(
                        img: "images/trimester1bg.jpg", title: "Trimester One"),
                    //CONTAINER WITH AN IMAGE AND TEXT
                    ProgressCard(
                        img: "images/trimester2bg.jpg", title: "Trimester Two"),
                    //CONTAINER WITH AN IMAGE AND TEXT
                    ProgressCard(
                        img: "images/trimester3bg.jpg", title: "Trimester Three"),
                  ],
                ),
              ),
               SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20,),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Nutrition",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,),
                ),
                
              ),
              
              //SECOND HORIZONTAL SCROLL
              Container(
                height: 160,
                width: Get.width,
                padding: EdgeInsets.all(20),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    //CONTAINER WITH AN IMAGE AND TEXT
                    NutritionCard(
                        img: "images/babybg.jpg", title: "Vitamin and Minerals"),
                    //CONTAINER WITH AN IMAGE AND TEXT
                    NutritionCard(
                        img: "images/babybg.jpg", title: "Foods and Drinks"),
                    //CONTAINER WITH AN IMAGE AND TEXT
                    NutritionCard(
                        img: "images/babybg.jpg", title: "Dos and Don'ts"),
                  ],
                ),
              ),
               SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20,),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Medical",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,),
                ),
                
              ),
              //THRID HORIZONTAL SCROLL
              Container(
                height: 160,
                width: Get.width,
                padding: EdgeInsets.all(20),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    //CONTAINER WITH AN IMAGE AND TEXT
                    MedicalCard(
                        img: "images/babybg.jpg", title: "Pregnancy and Conditions"),
                    //CONTAINER WITH AN IMAGE AND TEXT
                    MedicalCard(
                        img: "images/babybg.jpg", title: "Tests and Scans"),
                    //CONTAINER WITH AN IMAGE AND TEXT
                    MedicalCard(
                        img: "images/babybg.jpg", title: "Questions and Answers"),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20,),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Exercises",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,),
                ),
                
              ),
              //FOURTH HORIZONTAL SCROLL
              
              Container(
                height: 200,
                width: Get.width,
                padding: EdgeInsets.all(20),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    //CONTAINER WITH AN IMAGE AND TEXT
                    ExercisesCard(
                        img: "images/exercise1bg.jpg", title: "Simple exercises you can do at home"),
                    //CONTAINER WITH AN IMAGE AND TEXT
                    ExercisesCard(
                        img: "images/exercise2bg.jpg", title: "Benefits of exercising during pregnancy"),
                    //CONTAINER WITH AN IMAGE AND TEXT
                    ExercisesCard(
                        img: "images/exercise3bg.jpg", title: "How to exercise while pregnant"),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20,),
                alignment: Alignment.centerLeft,
              
                child: Text(
                  "Fetility",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,),
                ),
                
              ),
              //FIVTH HORIZONTAL SCROLL
              Container(
                height: 180,
                width: Get.width,
                padding: EdgeInsets.all(20),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    //CONTAINER WITH AN IMAGE AND TEXT
                    FertilityCard(
                        img: "images/babybg.jpg", title: "Considering getting pregnant?"),
                    //CONTAINER WITH AN IMAGE AND TEXT
                    FertilityCard(
                        img: "images/babybg.jpg", title: "Track your fertility"),
                    //CONTAINER WITH AN IMAGE AND TEXT
                    FertilityCard(
                        img: "images/babybg.jpg", title: "Best diet  for fertility"),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20,),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Community Forums",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,),
                ),
                
                
              ),
              //SIXTH HORIZONTAL SCROLL
              Container(
                height: 160,
                width: Get.width,
                padding: EdgeInsets.all(20),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    //CONTAINER WITH AN IMAGE AND TEXT
                    CommunityCard(
                        img: "images/communityinfobg.jpg", title: "Information"),
                    //CONTAINER WITH AN IMAGE AND TEXT
                    CommunityCard(
                        img: "images/supportbg.jpg", title: "Support"),
                    //CONTAINER WITH AN IMAGE AND TEXT
                    CommunityCard(
                        img: "images/babybg.jpg", title: "Activities"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      

    );
  }
}
