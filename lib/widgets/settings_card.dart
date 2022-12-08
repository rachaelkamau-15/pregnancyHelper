import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/auth_controller.dart';

class SettingsCard extends StatelessWidget {
  const SettingsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        backgroundColor: Color.fromARGB(195, 71, 1, 83),
        actions: [
          TextButton(
            onPressed: () async {
              await AuthController.to.signOut();
            },
            child: Text(
              "Logout",
              style:
                  TextStyle(color: Colors.white70,),
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 152,vertical: 10),
        color: Color.fromARGB(255, 234, 162, 247),
        child: Text("Account",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold),),
      ),
      
       
      
    );
  }
}
