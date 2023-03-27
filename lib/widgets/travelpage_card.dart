import 'package:flutter/material.dart';

class TravelPage extends StatelessWidget {
  const TravelPage({super.key});

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
           title: Text(
          "Travel",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(195, 71, 1, 83),
        ),
        body: Container(
          color: Color.fromARGB(255, 234, 162, 247),
            padding: EdgeInsets.only(left: 16, top: 25, right: 16),
            child: ListView(children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.add,
                    color: Color.fromARGB(195, 71, 1, 83),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Baby car seat",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(
                    Icons.add,
                    color: Color.fromARGB(195, 71, 1, 83),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Stroller",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(
                    Icons.add,
                    color: Color.fromARGB(195, 71, 1, 83),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Travel bag",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(
                    Icons.add,
                    color: Color.fromARGB(195, 71, 1, 83),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Travel crib",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ]
            )
        )
    );
  }
}