import 'package:flutter/material.dart';

class SettingsCard extends StatelessWidget {
  const SettingsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        backgroundColor: Color.fromARGB(195, 71, 1, 83),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.logout, color: Colors.white70),
          ),
        ],
      ),
      body: Text(
        "Account", 
        style: TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
            
      ),
    );
  }
}
