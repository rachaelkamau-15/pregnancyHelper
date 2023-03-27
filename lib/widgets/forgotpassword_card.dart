import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController _emailController = TextEditingController();
  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  Future passwordReset() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: _emailController.text.trim());
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text("Password link sent! Check your email"),
          );
        },
      );
    } on FirebaseAuthException catch (e) {
      print(e);
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text(e.message.toString()),
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(195, 71, 1, 83),
          elevation: 1,
          leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
        color:Colors.white),
        onPressed: () {
          Navigator.pop(context);
        },
        ),
        ),
        body: Column(
          children: [
            SizedBox(height: 10),
            Text("Enter your email address"),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25.0,
              ),
              child: TextField(
                controller: _emailController,
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
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: passwordReset,
              child: Text("Reset Password"),
              color: Color.fromARGB(195, 71, 1, 83),
            ),
          ],
        ));
  }
}
