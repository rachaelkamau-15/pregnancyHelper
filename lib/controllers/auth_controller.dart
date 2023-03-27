import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:pregnancy_helper/screens/login.dart';
import 'package:pregnancy_helper/viewpage.dart';
import '../utils/utils.dart';

import '../screens/dashboard.dart';
import '../screens/signup.dart';
import '../screens/welcome.dart';
import 'main_controller.dart';


class AuthController extends GetxController {
  static AuthController get to => Get.find();
  late Rx<User?> firebaseUser;
//holds extra user data
  var firebaseUserData = {}.obs;
//from Utils
  var auth;
  var firestore;

  late CollectionReference users;
  var isNewUser = false.obs;

  @override
  void onReady() {
    super.onReady();
    auth = FirebaseAuth.instance;
    firestore = FirebaseFirestore.instance;
    // initialize user
    users = firestore.collection('users');
    firebaseUser = Rx<User?>(auth.currentUser);
    firebaseUserData.value = {};
    //track user data changes
    firebaseUser.bindStream(auth.userChanges());
    //If user changes to null, send user to login screen
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) async {
    if (user == null) {
      // if the user is not found then the user is navigated to the Register Screen
      Get.offAll(() => const LogIn());
    } else {
      // if the user exists and logged in the the user is navigated to the Dashboard Screen
      Utils.showLoading(message: "Fetching Profile...");
      var fsUser = await users.doc(user.uid).get();
      firebaseUserData.value.addAll(
          fsUser.data() == null ? {} : fsUser.data() as Map<String, dynamic>);
      update();
      isNewUser.value = firebaseUserData.value ["isNewUser"]??true;
      update();
      Get.offAll(() => Dashboard());
      Utils.dismissLoader();
      // REACTIVE LIST

MainController.to.activities.bindStream(MainController.to.activitiesStream());
    }
  }
  isOldUser(){
    isNewUser.value =false;
    update();
  }


  Future<bool> register(
      String email, 
      String password, 
      String name,
      String? gestationalAge,
      String? conceptionAge,
      String? dueDate,
      String? estimatedDueDate,
      String? lmp,
      String? cycleLength,
      String? edd,
      ) async {
    Utils.showLoading(message: "Creating account…");
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      var user = auth.currentUser;
      if (user != null) {
        var fsUser = await users.doc(user.uid).get();

        if (!fsUser.exists) {
          isNewUser.value = true;
          update();
          await users
              .doc(user.uid)
              .set({"name": "$name","email": "$email", "gestationalAge": "$gestationalAge", "conceptionAge": "$conceptionAge", "dueDate": "$dueDate", "estimatedDueDate": "$estimatedDueDate", "lmp": "$lmp", "cycleLenth": "$cycleLength", "edd": "$edd", "isNewUser":true});
        }
        Utils.showSuccess("Signup Successful!");
        Utils.dismissLoader();

        return true;
      } else {
        Utils.showError("Signup Failed!");
        Utils.dismissLoader();

        return false;
      }
    } catch (firebaseAuthException) {
      Utils.showError("Signup Failed!");
      Utils.dismissLoader();
      return false;
    }
  }

  Future<bool> login(String email, password) async {
    Utils.showLoading(message: "Authenticating…");

    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      var user = auth.currentUser;

      if (user != null) {
        Utils.showSuccess("Login Successful!");
        //Utils.dismissLoader();
      }
    } catch (firebaseAuthException) {
      print(firebaseAuthException);
      Utils.showError("Login  Failed!");
      Utils.dismissLoader();
      return false;
    }
    Utils.dismissLoader();
    return false;
  }

  Future signOut() async {
    Utils.showLoading(message: "Signing out…");

    await auth.signOut();
    Utils.dismissLoader();
  }
  Future deleteUser() async {
    Utils.showLoading(message: "Deleting Account…");

    await (auth as FirebaseAuth).currentUser?.delete();
    Utils.dismissLoader();
  }
}