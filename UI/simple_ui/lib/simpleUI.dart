//import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class simpleUI extends StatefulWidget {
  const simpleUI({super.key});

  @override
  State<simpleUI> createState() => _simpleUIState();
}

class _simpleUIState extends State<simpleUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(
          Icons.menu_sharp,
          size: 30,
          color: Colors.white,
        ),
        title: Center(
          child: Text("Simple UI",
              style: GoogleFonts.lobster(
                  textStyle: TextStyle(fontSize: 25, color: Colors.white))),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Icon(Icons.person, color: Colors.white, size: 25,),
          )],
      ),
      body: 
       Column(
        children: [
         Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 15.0),
                    child: Text(
                      "DashBoard",
                      style: GoogleFonts.lobster(
                        textStyle: TextStyle(fontSize: 30, color: Color.fromARGB(255, 244, 242, 242))
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      "This is your Main Dashboard", 
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      Container(
        color: Colors.white,
        //decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.0),
       // ),
        child: Expanded(
              flex: 3,
              child: Row(
                children: [
                  Column(
                    children: [
                      Row(
                        
                      ),
                      Row(
        
                      ),
                      Row(
        
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        
                      ),
                      Row(
        
                      ),
                      Row(
        
                      )
                    ],
                  )
                ],
                
              ),
            ),
      )
        ],
       )
    );
  }
}
