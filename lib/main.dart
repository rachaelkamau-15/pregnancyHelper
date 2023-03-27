
import 'dart:js';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:pregnancy_helper/screens/dashboard.dart';
import 'package:pregnancy_helper/screens/login.dart';
import 'package:pregnancy_helper/screens/signup.dart';

import 'package:pregnancy_helper/screens/welcome.dart';
import 'package:pregnancy_helper/widgets/Tools_card.dart';
import 'package:pregnancy_helper/widgets/timeline_card.dart';

import 'controllers/main_bindings.dart';
import 'firebase_options.dart';
import '../screens/welcome.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
    
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: MainBinding(),
      debugShowCheckedModeBanner: false,
      navigatorObservers: [FlutterSmartDialog.observer],
 builder: FlutterSmartDialog.init(),

      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
           ),
      home:const  WelcomePage(),

    );
  }
}

  

        

 
