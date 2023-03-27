import 'package:flutter/material.dart';

class ClothingPage extends StatelessWidget {
  const ClothingPage({super.key});

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
          "Clothing",
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
                    "Pairs of mittens",
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
                    "Shawls",
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
                    "Baby fleece blankets",
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
                    "Baby caps",
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
                    "Cardigans",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
            ]
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
                    "Footed trousers",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
            ]
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
                    "Sweater",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
            ]
            ),
            
            ]
            
            ),
        ),
            
    );
  }
}