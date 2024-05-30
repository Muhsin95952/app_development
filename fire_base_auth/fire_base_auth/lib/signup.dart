import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpPage> {
  // FirebaseAuth auth = FirebaseAuth.instance;
  // TextEditingController emailController = TextEditingController();
  // TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter Email.",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16)
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter Password.",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16)
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            FloatingActionButton(
              child: Text("SignIn"),
              onPressed: (){
            }),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("If New then ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
                 Text("Sign Up",

              style: TextStyle(
              color: Colors.purpleAccent,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          )
              ],
            ),           
          ],
        ),
      ),
    );
  }
}