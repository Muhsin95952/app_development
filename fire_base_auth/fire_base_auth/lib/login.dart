import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
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