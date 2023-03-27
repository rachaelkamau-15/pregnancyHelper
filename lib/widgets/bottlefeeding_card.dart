import 'package:flutter/material.dart';

class BOttleFeeding extends StatelessWidget {
  const BOttleFeeding({super.key});

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
          "Bottle Feeding",
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
                    "3 Bibs",
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
                    "Baby milk powder",
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
                    "Bottle warmer",
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
                    "Steriliser kit",
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
