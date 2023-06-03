import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pregnancy_helper/controllers/auth_controller.dart';
import 'package:pregnancy_helper/utils/utils.dart';

class MainController extends GetxController {
  static MainController get to => Get.find();
  var firestore;
  //creating a table (collection)
  var exploretrackyourprogress = <String, dynamic>{}.obs;
  var exploremedical = <String, dynamic>{}.obs;
  var explorenutrition = <String, dynamic>{}.obs;
  var explorefertility = <String, dynamic>{}.obs;
  var exploreexercises = <String, dynamic>{}.obs;
  var explorecommunityforums = <String, dynamic>{}.obs;
  //variable to list content
  var exploreSelectId = "".obs;

  @override
  void onReady() {
    super.onReady();
    firestore = FirebaseFirestore.instance;
  }

  //creating data
  createExplore(image, title, content) async {
    Utils.showLoading(message: 'Creating explore');
    var userId = AuthController.to.firebaseUser.value?.uid;
    try {
      await firestore.collection("Explore").add({
        "userId": userId,
        "image": image,
        "title": title,
        "content": content,
        "created": DateTime.now().microsecondsSinceEpoch
      });
      Utils.showSuccess("Success!");
    } catch (e) {
      Utils.showError("Failed! Try again...");
    }
    Utils.dismissLoader();
  }

  //updating data
  updateExplore(image, title, content) async {
    Utils.showLoading(message: 'Updating explore');
    var userId = AuthController.to.firebaseUser.value?.uid;
    try {
      await firestore.collection("Explore").doc(activitiesSelectId).update({
        "userId": userId,
        "image": image,
        "title": title,
        "content": content
      });
      Utils.showSuccess("Success!");
    } catch (e) {
      Utils.showError("Failed! Try again...");
    }
    Utils.dismissLoader();
  }

  //deleting data
  deleteExplore(id) async {
    Utils.showLoading(message: 'Deleting explore');
    var userId = AuthController.to.firebaseUser.value?.uid;
    try {
      await firestore.collection("Explore").doc(id).delete();
      Utils.showSuccess("Success!");
    } catch (e) {
      Utils.showError("Failed! Try again...");
    }
    Utils.dismissLoader();
  }

  //fetch livestream
  Stream<Map<String, dynamic>> exploreStream(category) {
    var ref = FirebaseFirestore.instance
        .collection("Explore")
        .where('category', isEqualTo: category)
        //.orderBy("created")
        .snapshots();
    return ref.map((list) {
      return {for (var element in list.docs) element.id: element.data()};
    });
  }

  //select an item id
  selectExplore(id) {
    exploreSelectId.value = id;
    update();
  }

//CREATING ACTIVITIES COLLECTION

  var activities = <String, dynamic>{}.obs;
  var activitiesSelectId = "".obs;

//creating data
  createActivities(time, date, title, contacts, description) async {
    Utils.showLoading(message: 'Creating Activities');
    var userId = AuthController.to.firebaseUser.value?.uid;
    try {
      await firestore.collection("Activities").add({
        "userId": userId,
        "date": date,
        "time": time,
        "title": title,
        "contacts": contacts,
        "decription": description,
        "created": DateTime.now().microsecondsSinceEpoch
      });
      Utils.showSuccess("Success!");
    } catch (e) {
      Utils.showError("Failed! Try again...");
    }
    Utils.dismissLoader();
  }

  //updating data
  updateActivities(title, date, time, description, content) async {
    Utils.showLoading(message: 'Updating Activites');
    var userId = AuthController.to.firebaseUser.value?.uid;
    try {
      await firestore.collection("Activities").doc(activitiesSelectId).update({
        "userId": userId,
        "date": date,
        "title": title,
        "content": content,
        "time": time,
        "description": description,
      });
      Utils.showSuccess("Success!");
    } catch (e) {
      Utils.showError("Failed! Try again...");
    }
    Utils.dismissLoader();
  }

  //deleting data
  deleteActivities(id) async {
    Utils.showLoading(message: 'Deleting Activities');
    var userId = AuthController.to.firebaseUser.value?.uid;
    try {
      await firestore.collection("Activities").doc(id).delete();
      Utils.showSuccess("Success!");
    } catch (e) {
      Utils.showError("Failed! Try again...");
    }
    Utils.dismissLoader();
  }

  //fetch livestream
  Stream<Map<String, dynamic>> activitiesStream() {
    var ref = FirebaseFirestore.instance
        .collection("Activities")
        .where('userId', isEqualTo: AuthController.to.auth.currentUser.uid)
        .orderBy("created")
        .snapshots();
    return ref.map((list) {
      return {for (var element in list.docs) element.id: element.data()};
    });
  }

  //select an item id
  selectActivities(id) {
    var activitiesSelectId;
    activitiesSelectId.value = id;
    update();
  }
}
