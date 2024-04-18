import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(
          Icons.home,
          size: 30,
          color: Colors.white,
        ),
        title: Text(
          "Muhsin Shah",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              // backgroundImage: NetworkImage("https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.behance.net%2Fgallery%2F41332353%2FRandom-People-Shots&psig=AOvVaw1JbFFllCzTRcYxN_gSIiXm&ust=1711709890888000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCOj-wrfmloUDFQAAAAAdAAAAABAD"),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.all(
                              Radius.circular(20)),
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Colors.yellow,
                                Colors.pink,
                                Colors.grey,
                                Colors.cyan,
                                Colors.red,
                                Colors.teal,
                              ])),
                      height: 300,
                      width: 150,
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                        Icon(Icons.car_rental, size: 70, color: Colors.white,),
                        Text("Rental Car", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text("Flutter App Development"),
                        )
                      ],),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius:
                            BorderRadius.all(Radius.circular(20)),
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Colors.red,
                              Colors.pink,
                              Colors.yellow,
                              Colors.cyan,
                              Colors.teal,
                              Colors.grey,
                            ])),
                    height: 200,
                    width: 150,
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                        Icon(Icons.alarm, size: 70, color: Colors.black,),
                        Text("Alert", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text("Flutter App Development"),
                        )
                      ],),
                    // color: Colors.red,
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(
                              Radius.circular(20)),
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Colors.cyan,
                                Colors.red,
                                Colors.teal,
                                Colors.grey,
                                Colors.pink,
                                Colors.yellow,
                              ])),
                      height: 200,
                      width: 150,
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                        Icon(Icons.people, size: 70, color: Colors.black,),
                        Text("People", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text("Flutter App Development"),
                        )
                      ],),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius:
                            BorderRadius.all(Radius.circular(20)),
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Colors.pink,
                              Colors.yellow,
                              Colors.red,
                              Colors.teal,
                              Colors.grey,
                              Colors.cyan,
                            ])),
                    height: 300,
                    width: 150,
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                        Icon(Icons.android, size: 70, color: Colors.white,),
                        Text("Android", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text("Flutter App Development"),
                        )
                      ],),
                    //color: Colors.green,
                  )
                ],
              )
            ],
          )
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    ));
  }
}
