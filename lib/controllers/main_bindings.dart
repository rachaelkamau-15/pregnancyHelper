import 'package:pregnancy_helper/controllers/auth_controller.dart';
import 'package:get/get.dart';

import 'auth_controller.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<AuthController>(AuthController());
  }
}