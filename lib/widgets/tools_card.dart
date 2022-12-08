import 'dart:developer';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'appointment_card.dart';
import 'birthplan_card.dart';
import 'contractions_card.dart';
import 'hospitalbag_card.dart';
import 'kickcounter_card.dart';
import 'questions_card.dart';
import 'shop_card.dart';
import 'timeline_card.dart';

class ToolsCard extends StatelessWidget {
  const ToolsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(195, 71, 1, 83),
      appBar: AppBar(
        elevation: 0,
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
        child: Column(
          children: [
            //TOP TEXT
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              width: Get.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Tools",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Essential Planning",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            //BOTTOM SECTION
            Expanded(
              child: Container(
                width: Get.width,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(35),
                  ),
                ),
                child: ListView(
                  children: [
                    //FIRST ROW
                    Row(
                      children: [
                        //FIRST ITEM
                        Expanded(
                            child: TimelineCard(
                          img: "images/timelinebg.png",
                          title: "Timeline",
                          onClicked: () {},
                        )),
                        SizedBox(
                          width: 20,
                        ),
                        //SECOND ITEM
                        Expanded(
                            child: AppointmentCard(
                          img: "images/appointmentsbg.png",
                          title: "Appointments",
                          onClicked: () {},
                        )),
                      ],
                    ),
                    //SECOND ROW
                    Row(
                      children: [
                        Expanded(
                            child: QuestionsCard(
                          img: "images/questionsbg.png",
                          title: "Questions",
                          onClicked: () {},
                        )),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            child: ShopCard(
                          img: "images/shopbg.png",
                          title: "Shop",
                          onClicked: () {},
                        )),
                      ],
                    ),
                    //THIRD ROW
                    Row(
                      children: [
                        Expanded(
                            child: KickcounterCard(
                          img: "images/kickcounterbg.webp",
                          title: "Kick Counter",
                          onClicked: () {},
                        )),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            child: ContractionsCard(
                          img: "images/contractionsbg.webp",
                          title: "Contractions",
                          onClicked: () {},
                        )),
                      ],
                    ),
                    //FOURTH ROW
                    Row(
                      children: [
                        Expanded(
                            child: BirthplanCard(
                          img: "images/birthplanbg.png",
                          title: "Birth Plan",
                          onClicked: () {},
                        )),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            child: HospitalbagCard(
                          img: "images/hospitalbagbg.png",
                          title: "Hospital Bag",
                          onClicked: () {},
                        )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
