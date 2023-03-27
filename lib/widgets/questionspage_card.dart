import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pregnancy_helper/widgets/settings_card.dart';

class QuestionsPage extends StatelessWidget {
  const QuestionsPage({super.key});

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
          "Questions",
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
            Container( color:
              Color.fromARGB(255, 234, 162, 247),
              child: ExpansionTile(
                title: Text(
                  "When does morning sickness begin?",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
                ),
                children: [
                  ListTile(
                    title: Column(
                      children: [
                        Text(
                          "One of the most common pregnancy question is regarding morning sickness in the first trimester and throughout the rest of the pregnancy. Most pregnant women have morning sickness in the first trimester (first 3 months) of pregnancy. It usually starts at about 6 weeks of pregnancy and is at its worst at about 9 weeks. Most women feel better in their second trimester, but some may have morning sickness throughout pregnancy. Talk to your provider about ways to aid with discomfort.",
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Color.fromARGB(255, 234, 162, 247),
              child: ExpansionTile(
                title: Text(
                  "How Will I Know My Due Date?",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
                ),
                children: [
                  ListTile(
                    title: Column(
                      children: [
                        Text(
                          "Understanding how due dates are calculated is important. A woman can normally count on 36 to 40 weeks of pregnancy. To efficiently calculate your due date, you will need to know the date of your last menstrual period — 280 days or 40 weeks from the first day of your last period will be your due date.",
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Color.fromARGB(255, 234, 162, 247),
              child: ExpansionTile(
                title: Text(
                  "I'm 6 months pregnant and experience shortness in breathing.",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
                ),
                children: [
                  ListTile(
                    title: Column(
                      children: [
                        Text(
                          "Stay hydrated and avoid physical exertion and standing for too long.",
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Color.fromARGB(255, 234, 162, 247),
              child: ExpansionTile(
                title: Text(
                  "I'm 9 months pregnant. How do I overcome fatigue and tiredness?",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
                ),
                children: [
                  ListTile(
                    title: Column(
                      children: [
                        Text(
                          "It is quite a common symptom. Don't stress. Practice butterfly and Kegel's exercises. You can also do housework like squatting and mopping.",
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Color.fromARGB(255, 234, 162, 247),
              child: ExpansionTile(
                title: Text(
                  "How much caffeine can I have during pregnancy?",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
                ),
                children: [
                  ListTile(
                    title: Column(
                      children: [
                        Text(
                          "It’s best to cut right back, as caffeine can affect the birth weight of your baby. Generally, a cup of tea or coffee a day is fine. We know it’s hard but cut out fizzy drinks because the caffeine and sugar levels can be really high. You’ll find more information on eating healthily here.",
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
