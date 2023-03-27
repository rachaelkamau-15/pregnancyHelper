import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pregnancy_helper/controllers/auth_controller.dart';
import 'package:pregnancy_helper/screens/dashboard.dart';
import 'package:pregnancy_helper/screens/login.dart';

import '../controllers/auth_controller.dart';
import '../utils/utils.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _lastNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/signupbg.jpg"), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35, top: 45),
              child: Text(
                'Create\nAccount',
                style: TextStyle(color: Colors.white, fontSize: 33),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5,
                    right: 35,
                    left: 35),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        fillColor: Color.fromARGB(255, 234, 162, 247),
                        filled: true,
                        hintText: "First Name",
                        hintStyle:
                            TextStyle(color: Color.fromARGB(195, 71, 1, 83)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      controller: _nameController,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        fillColor: Color.fromARGB(255, 234, 162, 247),
                        filled: true,
                        hintText: "Last Name",
                        hintStyle: TextStyle(
                          color: Color.fromARGB(195, 71, 1, 83),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      controller: _lastNameController,
                    ),
                    SizedBox(height: 30),
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        fillColor: Color.fromARGB(255, 234, 162, 247),
                        filled: true,
                        hintText: "Email",
                        hintStyle: TextStyle(
                          color: Color.fromARGB(195, 71, 1, 83),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      controller: _emailController,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        fillColor: Color.fromARGB(255, 234, 162, 247),
                        filled: true,
                        hintText: "Password",
                        hintStyle: TextStyle(
                          color: Color.fromARGB(195, 71, 1, 83),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      controller: _passwordController,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: Get.width * .5,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Container(
                            width: Get.width * 0.6,
                            height: 48,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color.fromARGB(255, 234, 162, 247),
                            ),
                            child: TextButton(
                              onPressed: () async {
                                if (_emailController.text.trim().isEmpty ||
                                    !_emailController.text.trim().isEmail) {
                                  Utils.showError("Please Enter valid email!");
                                } else if (_passwordController.text
                                        .trim()
                                        .isEmpty ||
                                    _passwordController.text.trim().isEmpty) {
                                  Utils.showError("No field should be empty!");
                                } else if (_nameController.text
                                        .trim()
                                        .isEmpty ||
                                    _nameController.text.trim().isEmpty) {
                                  Utils.showError("No field should be empty!");
                                } else {
                                  AuthController.to.register(
                                    _emailController.text.trim(),
                                    _passwordController.text.trim(),
                                    _nameController.text.trim(),
                                    "",
                                    "",
                                    "",
                                    "",
                                    "",
                                    "",
                                    "",
                                  );
                                }
                              },
                              child: Text(
                                "Signup",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(195, 71, 1, 83),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
