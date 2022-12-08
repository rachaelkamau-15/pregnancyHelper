import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pregnancy_helper/screens/dashboard.dart';

import '../controllers/auth_controller.dart';
import '../utils/utils.dart';
import 'signup.dart';


class LogIn extends StatefulWidget {
  const LogIn({super.key});

@override
  State<LogIn> createState() => _LogInState();
}
class _LogInState extends State<LogIn> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
                'Welcome\nBack',
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
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          fillColor: Color.fromARGB(255, 234, 162, 247),
                          filled: true,
                          hintText: "Email",
                          hintStyle: TextStyle(color: Colors.black),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
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
                          hintStyle: TextStyle(color: Colors.black),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Login In",
                            style: TextStyle(
                                color: Color.fromARGB(195, 71, 1, 83),
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Color.fromARGB(195, 71,1, 83),
                            child: IconButton(
                                color: Colors.white,
                                onPressed: () {
                                 Get.to (() =>Dashboard()) ;
                                },
                                icon: Icon(Icons.arrow_forward)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                             onPressed: () async {
                if (_emailController.text.trim().isEmpty ||
                    !_emailController.text.trim().isEmail) {
                  Utils.showError("Please Enter valid email!");
                } else if (_passwordController.text.trim().isEmpty) {
                  Utils.showError("No field should be empty!");
                } else {
                  await AuthController.to.login(_emailController.text.trim(),
                      _passwordController.text.trim());
                }
              },
                             
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 18,
                                color: Color.fromARGB(195, 71, 1, 83),
                              ),
                            ),
                          ),
                          TextButton(
                            
                              onPressed: () async {},
                            child: Text(
                              "Forgot Password",
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 18,
                                color: Color.fromARGB(195, 71, 1, 83),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
