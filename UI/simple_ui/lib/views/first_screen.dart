import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_ui/views/second_screen.dart';

import '../data/list_data.dart';

class firstScreen extends StatefulWidget {
  const firstScreen({super.key});

  @override
  State<firstScreen> createState() => _firstScreenState();
}

class _firstScreenState extends State<firstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Color.fromARGB(255, 16, 24, 177),
          body: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 24, bottom: 18, left: 16),
              child: Row(
                children: [
                  Text(
                    "Matches",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "3rd Test- The Ashes 2019",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Headingly",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Icon(Icons.sports_cricket)),
                                Padding(
                                  padding: const EdgeInsets.only(left: 6),
                                  child: Text(
                                    "ENG",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                  width: 90,
                                ),
                                CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Icon(Icons.sports_cricket)),
                                Padding(
                                  padding: const EdgeInsets.only(left: 6),
                                  child: Text(
                                    "AUS",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "ENG needs 27 runs to win",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    height: 230,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Color.fromRGBO(19, 4, 231, 0.916),
                            Colors.purple,
                            Colors.red,
                          ]),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  child: Container(
                    child: Center(
                      child: Text(
                        "TEST",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    height: 18,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                ),
                Positioned(
                  right: 30,
                  child: Container(
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Live Match",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    ),
                    height: 30,
                    width: 85,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: ListView.builder(
                  itemCount: listViewData.length,
                  itemBuilder: (BuildContext context, index){
                  return 
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8, bottom: 4),
                    child: Card( 
                      color: Color.fromARGB(117, 255, 255, 255),
                      child: 
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => secondScreen()));
                        },
                        child: ListTile( 
                          leading: 
                          Icon(
                            listViewData[index].icon,
                          size: 40, color: const Color.fromARGB(166, 255, 255, 255),),
                            title: Text(listViewData[index].text,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            trailing: CircleAvatar(
                              radius: 16,
                              backgroundColor: Colors.cyan,
                              child: Icon(Icons.arrow_forward, color: const Color.fromARGB(214, 255, 255, 255)),
                            ),
                          ),
                      ),
                    ),
                  );
                }),
              ),
            ) 
          ]),
      );
  }
}