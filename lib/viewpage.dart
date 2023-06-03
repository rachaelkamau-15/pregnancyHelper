import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:jiffy/jiffy.dart';
import 'package:pregnancy_helper/controllers/auth_controller.dart';

class ViewPage extends StatefulWidget {
  const ViewPage({super.key});
  @override
  _ViewPageState createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  final PageController _pageController = PageController();
  var gestationalAgeCtrl = TextEditingController();

  var conceptionDate = null;
  var estimatedDueDate = null;
  var dateOfLastMenses = null;

  var cycleDays = 0;
  var gestationalAge = 0;

  var wizardList = [false, false, false, false, false];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("General Information"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(195, 71, 1, 83),
        actions: [
          InkWell(
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.close, color: Colors.white),
            ),
            onTap: () {
              SmartDialog.dismiss();
            },
          ),
        ],
      ),
      body: _step1(),
    );
  }

  Widget _step1() {
    return Container(
      height: Get.height,
      width: Get.width,
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Hello! Which of these do you know?",
              style: TextStyle(
                  color: Color.fromARGB(195, 71, 1, 83),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            ExpansionPanelList(
              expansionCallback: (panelIndex, isExpanded) {
                setState(() {
                  wizardList[panelIndex] = !isExpanded;
                });
                print(wizardList);
              },
              children: [
                ExpansionPanel(
                    isExpanded: wizardList[0],
                    canTapOnHeader: true,
                    headerBuilder: (_, isOpen) {
                      return Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            width: (Get.width * .5) - 60,
                            child: const Text(
                              "Gestational age",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            width: (Get.width * .5) - 60,
                            child: Text(
                              gestationalAge > 0
                                  ? "Your Gestational age is $gestationalAge"
                                  : "Enter Gestational age here",
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 16),
                            ),
                          )
                        ],
                      );
                    },
                    body: Container(
                      width: Get.width * .8,
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: gestationalAgeCtrl,
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(

                                  // contentPadding: EdgeInsets.symmetric(vertical: 0),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  hintText: "Enter Gestational age here"),
                            ),
                          ),
                          TextButton.icon(
                              onPressed: () {
                                setState(() {
                                  gestationalAge =
                                      int.tryParse(gestationalAgeCtrl.text) ??
                                          0;
                                  wizardList[0] = false;
                                });
                              },
                              icon: Icon(Icons.arrow_forward_sharp),
                              label: Text("DONE"))
                        ],
                      ),
                    )),
                ExpansionPanel(
                    isExpanded: wizardList[1],
                    canTapOnHeader: true,
                    headerBuilder: (_, isOpen) {
                      return Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            width: (Get.width * .5) - 60,
                            child: const Text(
                              "Conception date",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            width: (Get.width * .5) - 60,
                            child: Text(
                              conceptionDate != null
                                  ? "Your Conception Date is ${DateFormat.yMd().format(conceptionDate)}"
                                  : "Select Conception Date",
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 16),
                            ),
                          )
                        ],
                      );
                    },
                    body: CalendarDatePicker(
                        initialDate: DateTime.now(),
                        firstDate: DateTime.utc(DateTime.now()
                            .subtract(const Duration(days: 365))
                            .year),
                        lastDate: DateTime.now().add(Duration(days: 1)).toUtc(),
                        onDateChanged: ((value) {
                          setState(() {
                            conceptionDate = value;
                            wizardList[1] = false;
                          });
                        }))),
                ExpansionPanel(
                    isExpanded: wizardList[2],
                    canTapOnHeader: true,
                    headerBuilder: (_, isOpen) {
                      return Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            width: (Get.width * .5) - 60,
                            child: const Text(
                              "Estimated Due Date",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            width: (Get.width * .5) - 60,
                            child: Text(
                              estimatedDueDate != null
                                  ? "Your Estimated Due Date is ${DateFormat.yMd().format(estimatedDueDate)}"
                                  : "Select Estimated Due Date",
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 16),
                            ),
                          )
                        ],
                      );
                    },
                    body: Container(
                      width: Get.width * .8,
                      child: CalendarDatePicker(
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate: DateTime.now().add(Duration(days: 365)),
                          onDateChanged: ((value) {
                            setState(() {
                              estimatedDueDate = value;
                              wizardList[2] = false;
                            });
                          })),
                    )),
                ExpansionPanel(
                    isExpanded: wizardList[3],
                    canTapOnHeader: true,
                    headerBuilder: (_, isOpen) {
                      return Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            width: (Get.width * .5) - 60,
                            child: const Text(
                              "First Day of last menstrual Cycle",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            width: (Get.width * .5) - 60,
                            child: Text(
                              dateOfLastMenses != null
                                  ? "Your First Day of last menstrual cycle is ${DateFormat.yMd().format(dateOfLastMenses)}"
                                  : "Select First Day of last menstrual cycle",
                              style: const TextStyle(
                                  color: Colors.black54, fontSize: 16),
                            ),
                          )
                        ],
                      );
                    },
                    body: Container(
                      width: Get.width * .8,
                      child: CalendarDatePicker(
                          initialDate: DateTime.now(),
                          firstDate: DateTime.utc(DateTime.now()
                              .subtract(const Duration(days: 365))
                              .year),
                          lastDate:
                              DateTime.now().add(Duration(days: 1)).toUtc(),
                          onDateChanged: ((value) {
                            setState(() {
                              dateOfLastMenses = value;
                              wizardList[3] = false;
                            });
                          })),
                    )),
                // ExpansionPanel(
                //     isExpanded: wizardList[4],
                //     canTapOnHeader: true,
                //     headerBuilder: (_, isOpen) {
                //       return Row(
                //         children: [
                //           Container(
                //             padding: EdgeInsets.symmetric(horizontal: 10),
                //             width: (Get.width * .5) - 60,
                //             child: const Text(
                //               "Date of last menstruation",
                //               style: TextStyle(
                //                   fontWeight: FontWeight.bold, fontSize: 16),
                //             ),
                //           ),
                //           Container(
                //             padding: EdgeInsets.symmetric(horizontal: 10),
                //             width: (Get.width * .5) - 60,
                //             child: const Text(
                //               "Select Date of last menstruation",
                //               style: TextStyle(
                //                   color: Colors.black54, fontSize: 16),
                //             ),
                //           )
                //         ],
                //       );
                //     },
                //     body: Container(
                //       width: Get.width * .8,
                //       child: CalendarDatePicker(
                //           initialDate: DateTime.now(),
                //           firstDate: DateTime.utc(2023),
                //           lastDate: DateTime.utc(2023, 12, 31),
                //           onDateChanged: ((value) {
                //             setState(() {
                //               dateOfLastMenses = value;
                //             });
                //           })),
                //     )),
                ExpansionPanel(
                    isExpanded: wizardList[4],
                    canTapOnHeader: true,
                    headerBuilder: (_, isOpen) {
                      return Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            width: (Get.width * .5) - 60,
                            child: const Text(
                              "Average cycle length",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            width: (Get.width * .5) - 60,
                            child: Text(
                              cycleDays > 0
                                  ? "Your average cycle length is $cycleDays"
                                  : "Select your average cycle length",
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 16),
                            ),
                          )
                        ],
                      );
                    },
                    body: Container(
                      width: Get.width * .8,
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: CupertinoPicker(
                          magnification: 1.22,
                          squeeze: 1.2,
                          useMagnifier: true,
                          itemExtent: 32,
                          //this is called when selected item is changed
                          onSelectedItemChanged: (int selectedItem) {
                            setState(() {
                              cycleDays = selectedItem + 1;
                              // wizardList[4] = false;
                            });
                          },
                          children: List<Widget>.generate(31, (int index) {
                            return Center(
                              child: Text("${index + 1} days"),
                            );
                          })),
                    ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: Get.width * 0.6,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color.fromARGB(195, 71, 1, 83),
              ),
              child: TextButton(
                onPressed: () async {
                  var estimatedDeliveryDate = null;
                  if (dateOfLastMenses != null) {
                    estimatedDeliveryDate =
                        Jiffy.parse(dateOfLastMenses.toString())
                            .subtract(months: 3)
                            .dateTime;
                    estimatedDeliveryDate =
                        Jiffy.parse(estimatedDeliveryDate.toString())
                            .add(years: 1, days: 7)
                            .dateTime;
                  }

                  var res = await AuthController.to.updateUserData(
                      gestationalAge.toString(),
                      conceptionDate != null
                          ? "${DateFormat.yMd().format(conceptionDate)}"
                          : "",
                      estimatedDueDate != null
                          ? DateFormat.yMd().format(estimatedDueDate)
                          : "",
                      dateOfLastMenses != null
                          ? DateFormat.yMd().format(dateOfLastMenses)
                          : "",
                      cycleDays.toString(),
                      estimatedDeliveryDate != null
                          ? DateFormat.yMd().format(estimatedDeliveryDate)
                          : "");
                  if (res) {
                    SmartDialog.dismiss(tag: "GeneralInfo");
                  }
                },
                child: const Text(
                  "Continue",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget _step2() {
  //   return Container(
  //     height: Get.height,
  //     width: Get.width,
  //     color: Colors.white,
  //     child: SingleChildScrollView(
  //       child: Column(
  //         children: [
  //           const SizedBox(
  //             height: 50,
  //           ),
  //           const Text(
  //             "Select the first day of your last period",
  //             style: TextStyle(
  //                 color: Color.fromARGB(195, 71, 1, 83),
  //                 fontSize: 18,
  //                 fontWeight: FontWeight.bold),
  //           ),
  //           const SizedBox(
  //             height: 30,
  //           ),
  //           CalendarDatePicker(
  //               initialDate: DateTime.now(),
  //               firstDate: DateTime.utc(2023),
  //               lastDate: DateTime.utc(2023, 12, 31),
  //               onDateChanged: ((value) {
  //                 setState(() {
  //                   selectedDate = value;
  //                 });
  //               })),
  //           const SizedBox(
  //             height: 30,
  //           ),
  //           Container(
  //             width: Get.width * .8,
  //             height: 40,
  //             decoration: BoxDecoration(
  //               borderRadius: BorderRadius.circular(20),
  //             ),
  //             child: Container(
  //               width: Get.width * 0.6,
  //               height: 48,
  //               decoration: BoxDecoration(
  //                 borderRadius: BorderRadius.circular(12),
  //                 color: const Color.fromARGB(195, 71, 1, 83),
  //               ),
  //               child: TextButton(
  //                 onPressed: () {},
  //                 child: const Text(
  //                   "Continue",
  //                   style: TextStyle(
  //                     fontSize: 16,
  //                     fontWeight: FontWeight.bold,
  //                     color: Colors.white70,
  //                   ),
  //                 ),
  //               ),
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  // Widget _step3() {
  //   return Container(
  //     height: Get.height,
  //     width: Get.width,
  //     color: Colors.white,
  //     child: SingleChildScrollView(
  //       child: Column(
  //         children: [
  //           const SizedBox(
  //             height: 50,
  //           ),
  //           const Text(
  //             "Select your average cycle length",
  //             style: TextStyle(
  //                 color: Color.fromARGB(195, 71, 1, 83),
  //                 fontSize: 18,
  //                 fontWeight: FontWeight.bold),
  //           ),
  //           const SizedBox(
  //             height: 30,
  //           ),
  //           const SizedBox(
  //             height: 30,
  //           ),
  //           Container(
  //             width: Get.width * .8,
  //             height: 40,
  //             decoration: BoxDecoration(
  //               borderRadius: BorderRadius.circular(20),
  //             ),
  //             child: Container(
  //               width: Get.width * 0.6,
  //               height: 48,
  //               decoration: BoxDecoration(
  //                 borderRadius: BorderRadius.circular(12),
  //                 color: const Color.fromARGB(195, 71, 1, 83),
  //               ),
  //               child: TextButton(
  //                 onPressed: () {},
  //                 child: const Text(
  //                   "Continue",
  //                   style: TextStyle(
  //                     fontSize: 16,
  //                     fontWeight: FontWeight.bold,
  //                     color: Colors.white70,
  //                   ),
  //                 ),
  //               ),
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
