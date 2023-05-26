import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

class ViewPage extends StatefulWidget {
  const ViewPage({super.key});
  @override
  _ViewPageState createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  final PageController _pageController = PageController();
  var selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("General Information"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(195, 71, 1, 83),
        actions: [
          InkWell(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.close, color: Colors.white),
            ),
            onTap: () {
              SmartDialog.dismiss();
            },
          ),
        ],
      ),
      body: PageView(
        controller: _pageController,
        scrollDirection: Axis.horizontal,
        children: [_step1(), _step2(), _step3()],
      ),
    );
  }

  Widget _step1() {
    return Container(
      height: Get.height,
      width: Get.width,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "Hello! Which of these do you know?",
              style: TextStyle(
                  color: Color.fromARGB(195, 71, 1, 83),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(
                bottom: 10,
              ),
              child: ListTile(
                title: Text("Gestational age"),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                bottom: 10,
              ),
              child: ListTile(
                title: Text("Conception date"),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                bottom: 10,
              ),
              child: ListTile(
                title: Text("Estimated due date"),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                bottom: 10,
              ),
              child: ListTile(
                title: Text("Date of last menstruation"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _step2() {
    return Container(
      height: Get.height,
      width: Get.width,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              "Select the first day of your last period",
              style: TextStyle(
                  color: Color.fromARGB(195, 71, 1, 83),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            CalendarDatePicker(
                initialDate: DateTime.now(),
                firstDate: DateTime.utc(2023),
                lastDate: DateTime.utc(2023, 12, 31),
                onDateChanged: ((value) {
                  setState(() {
                    selectedDate = value;
                  });
                })),
            SizedBox(
              height: 30,
            ),
            Container(
              width: Get.width * .8,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                width: Get.width * 0.6,
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color.fromARGB(195, 71, 1, 83),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white70,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _step3() {
    return Container(
      height: Get.height,
      width: Get.width,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              "Select your average cycle length",
              style: TextStyle(
                  color: Color.fromARGB(195, 71, 1, 83),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            CupertinoPicker(
                magnification: 1.22,
                squeeze: 1.2,
                useMagnifier: true,
                itemExtent: 32,
                //this is called when selected item is changed
                onSelectedItemChanged: (int selectedItem) {
                  var days = selectedItem + 1;
                },
                children: List<Widget>.generate(31, (int index) {
                  return Center(
                    child: Text("${index + 1} days"),
                  );
                })),
            SizedBox(
              height: 30,
            ),
            Container(
              width: Get.width * .8,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                width: Get.width * 0.6,
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color.fromARGB(195, 71, 1, 83),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white70,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
