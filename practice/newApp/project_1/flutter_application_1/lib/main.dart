import 'package:flutter/material.dart';
import 'package:flutter_application_1/firstScreen.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
@override
  Widget build(BuildContext context){
    return const MaterialApp(
      title: "Muhsin Shah",
      debugShowCheckedModeBanner: false, 
      home: firstScreen()
     );
  }
}

