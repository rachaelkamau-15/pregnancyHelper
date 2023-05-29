import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'settings_card.dart';

class BirthPlanPage extends StatefulWidget {
  const BirthPlanPage({super.key});

  @override
  State<BirthPlanPage> createState() => _BirthPlanPageState();
}

class _BirthPlanPageState extends State<BirthPlanPage> {
  var _items = {};

  Box box = Hive.box("pregnancyHelper");
  Widget _itemWidget(key, content) {
    return InkWell(
      onTap: () {
        content["selected"] = !content["selected"];
        setState(() {
          var newItems = Map.of(_items);
          newItems[key] = content;
          _items = newItems;
        });
        box.put("birthplan", Map.of(_items));
      },
      child: Container(
        width: Get.width,
        margin: EdgeInsets.only(bottom: 5),
        child: Row(
          children: [
            content['selected']
                ? Icon(Icons.check_box_outlined,
                    color: Color.fromARGB(195, 71, 1, 83))
                : Icon(
                    Icons.check_box_outline_blank,
                  ),
            SizedBox(
              width: 8,
            ),
            Expanded(
              child: Text(
                "${content['title']}",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    //var box = Hive.box("pregnancyHelper");

    _items = box.get("birthplan",
        defaultValue: [
          {"selected": false, "title": "Full name"},
          {"selected": false, "title": "Partner's name"},
          {"selected": false, "title": "Doctor's name"},
          {"selected": false, "title": "Hospital name"},
          {"selected": false, "title": "Vaginal"},
          {"selected": false, "title": "C-section"},
          {"selected": false, "title": "Water birth"},
          {"selected": false, "title": "Minimum interruptions"},
          {"selected": false, "title": "Minimum vaginal examinations"},
          {
            "selected": false,
            "title": "Hospital staff limited to my own\ndoctor and nurses"
          },
          {"selected": false, "title": "My Partner to be present "},
          {"selected": false, "title": "Continuos"},
          {"selected": false, "title": "Intermittent"},
          {"selected": false, "title": "Internal"},
          {"selected": false, "title": "External"},
          {"selected": false, "title": "Push spontaneously"},
          {"selected": false, "title": "Push as directed"},
          {"selected": false, "title": "A second opinion"},
          {
            "selected": false,
            "title": "My partner to remain with me\nthe entire time"
          },
          {"selected": false, "title": "Immediately after delivery"},
          {"selected": false, "title": "After suctioning"},
          {"selected": false, "title": "After weighing"},
          {"selected": false, "title": "After being wiped clean\nand swaddled"},
          {
            "selected": false,
            "title": "To join me and baby\nimmediately after deliverye"
          },
          {
            "selected": false,
            "title": "To join me and baby\nin the room later"
          },
          {"selected": false, "title": "To have unlimited visits\nafter birth"},
          {"selected": false, "title": "Given in my presence"},
          {"selected": false, "title": "Given in my partner's presence"},
          {"selected": false, "title": "In my presence"},
          {"selected": false, "title": "In my partner's presence"},
          {"selected": false, "title": "By me"},
          {"selected": false, "title": "By my partner"},
          {"selected": false, "title": "As long as possible"},
          {"selected": false, "title": "As briefly as possible"},
        ].asMap());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 1,
        title: Text(
          "Birth Plan CheckList",
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
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        color: Color.fromARGB(255, 234, 162, 247),
        child: ListView(
          children: [
            Text(
              "Personal Details",
              style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(195, 71, 1, 83),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            ..._items.keys.toList().sublist(0, 4).map(
              (e) {
                return _itemWidget(e, _items[e]);
              },
            ).toList(),
            Divider(
              height: 10,
              thickness: 1,
            ),
            Text(
              "My Delivery is planned as:",
              style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(195, 71, 1, 83),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            ...(_items.keys.toList()).sublist(4, 7).map(
              (e) {
                return _itemWidget(e, _items[e]);
              },
            ).toList(),
            Divider(
              height: 10,
              thickness: 1,
            ),
            Text(
              "During labor, I'd like:",
              style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(195, 71, 1, 83),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            ..._items.keys.toList().sublist(7, 11).map(
              (e) {
                return _itemWidget(e, _items[e]);
              },
            ).toList(),
            Divider(
              height: 10,
              thickness: 1,
            ),
            Text(
              "Fetal monitoring to be:",
              style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(195, 71, 1, 83),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            ..._items.keys.toList().sublist(11, 15).map(
              (e) {
                return _itemWidget(e, _items[e]);
              },
            ).toList(),
            Divider(
              height: 10,
              thickness: 1,
            ),
            Text(
              "During delivery, I'd like to:",
              style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(195, 71, 1, 83),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            ..._items.keys.toList().sublist(15, 17).map(
              (e) {
                return _itemWidget(e, _items[e]);
              },
            ).toList(),
            Divider(
              height: 10,
              thickness: 1,
            ),
            Text(
              "In case of C-section, I'd like:",
              style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(195, 71, 1, 83),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            ..._items.keys.toList().sublist(17, 19).map(
              (e) {
                return _itemWidget(e, _items[e]);
              },
            ).toList(),
            Divider(
              height: 10,
              thickness: 1,
            ),
            Text(
              "I'd like to hold the baby:",
              style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(195, 71, 1, 83),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            ..._items.keys.toList().sublist(19, 23).map(
              (e) {
                return _itemWidget(e, _items[e]);
              },
            ).toList(),
            Divider(
              height: 10,
              thickness: 1,
            ),
            Text(
              "I'd like my family members:",
              style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(195, 71, 1, 83),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            ..._items.keys.toList().sublist(23, 26).map(
              (e) {
                return _itemWidget(e, _items[e]);
              },
            ).toList(),
            Divider(
              height: 10,
              thickness: 1,
            ),
            Text(
              "I'd like baby's medical exams and procedures:",
              style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(195, 71, 1, 83),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            ..._items.keys.toList().sublist(26, 28).map(
              (e) {
                return _itemWidget(e, _items[e]);
              },
            ).toList(),
            Divider(
              height: 10,
              thickness: 1,
            ),
            Text(
              "I'd like baby's first bath done:",
              style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(195, 71, 1, 83),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            ..._items.keys.toList().sublist(28, 32).map(
              (e) {
                return _itemWidget(e, _items[e]);
              },
            ).toList(),
            Divider(
              height: 10,
              thickness: 1,
            ),
            Text(
              "After birth,I'd like to stay in the hospital:",
              style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(195, 71, 1, 83),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            ..._items.keys.toList().sublist(32, 34).map(
              (e) {
                return _itemWidget(e, _items[e]);
              },
            ).toList(),
            Divider(
              height: 10,
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }
}
