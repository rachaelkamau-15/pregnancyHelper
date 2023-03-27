import 'dart:developer';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pregnancy_helper/controllers/auth_controller.dart';
import 'package:pregnancy_helper/widgets/appointmentspage_card.dart';
import 'package:pregnancy_helper/widgets/contractiontimer_card.dart';
import 'package:pregnancy_helper/widgets/hospitalbagchecklist_card.dart';
import 'package:pregnancy_helper/widgets/kickcounterpage_card.dart';
import 'package:pregnancy_helper/widgets/questionspage_card.dart';
import 'package:pregnancy_helper/widgets/settings_card.dart';
import 'package:pregnancy_helper/widgets/shopping_categories.dart';
import 'package:pregnancy_helper/widgets/timelinepage_card.dart';

import 'appointment_card.dart';
import 'birthplan_card.dart';
import 'birthplanpage_card.dart';
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
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
        color:Colors.white),
        onPressed: () {
          Navigator.pop(context);
        },
        ),
        actions: [
          InkWell(
            onTap:  () {
              Get.to(() => SettingsCard());
            },
            child: Container(
              margin: EdgeInsets.only(
                right: 25,
              ),
              child: CircleAvatar(
                child: Text("RK"),
                backgroundColor: Color.fromARGB(195, 71, 1, 83),
              ),
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
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Essential Planning",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
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
                          onClicked: () {
                            Get.to(() => TimelinePage());
                          },
                        )),
                        SizedBox(
                          width: 20,
                        ),
                        //SECOND ITEM
                        Expanded(
                            child: AppointmentCard(
                          img: "images/appointmentsbg.png",
                          title: "Appointments",
                          onClicked: () {
                            Get.to(() => AppointmentsPage());
                          },
                        )),
                      ],
                    ),
                    //SECOND ROW
                    Row(
                      children: [
                        //ThIRD ITEM
                        Expanded(
                            child: QuestionsCard(
                          img: "images/questionsbg.png",
                          title: "Questions",
                          onClicked: () {
                            Get.to(() => QuestionsPage());
                          },
                        )),
                        SizedBox(
                          width: 20,
                        ),
                        //FOURTH ITEM
                        Expanded(
                            child: ShopCard(
                          img: "images/shopbg.png",
                          title: "Shop",
                          onClicked: () {
                            Get.to(()=>ShoppingCategories());
                          },
                        )),
                      ],
                    ),
                    //THIRD ROW
                    Row(
                      children: [
                        //FIVTH ITEM
                        Expanded(
                            child: KickcounterCard(
                          img: "images/kickcounterbg.webp",
                          title: "Kick Counter",
                          onClicked: () {
                            Get.to(() => KickCounterPage());
                          },
                        )),
                        SizedBox(
                          width: 20,
                        ),
                        //SIXTH ITEM
                        Expanded(
                            child: ContractionsCard(
                          img: "images/contractionsbg.webp",
                          title: "Contractions",
                          onClicked: () {
                            Get.to(() => ContractionTimer());
                          },
                        )),
                      ],
                    ),
                    //FOURTH ROW
                    Row(
                      children: [
                        //SEVENTH ITEM
                        Expanded(
                            child: BirthplanCard(
                          img: "images/birthplanbg.png",
                          title: "Birth Plan",
                          onClicked: () {
                            Get.to(() => BirthPlanPage());
                          },
                        )),
                        SizedBox(
                          width: 20,
                        ),
                        //EIGHTH ITEM
                        Expanded(
                            child: HospitalbagCard(
                          img: "images/hospitalbagbg.png",
                          title: "Hospital Bag",
                          onClicked: () {
                            Get.to(() => HospitalbagChecklist());
                          },
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
