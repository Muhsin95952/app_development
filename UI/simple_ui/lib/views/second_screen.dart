import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class secondScreen extends StatelessWidget {
  const secondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 229, 229, 229),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(133, 41, 130, 0.898),
        title: Text(
          "Scheduales",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
      body: Container(
        child: Column(children: [
          /// First match history
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 20,
                              width: 170,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 230, 60, 60),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8))),
                            ),
                            Container(
                              height: 20,
                              width: 170,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 149, 13, 3),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(8))),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 20,
                              width: 170,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(8))),
                            ),
                            Container(
                              height: 20,
                              width: 170,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(8))),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 45,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("ENG",
                          style: TextStyle(color: Colors.white, fontSize: 14)),
                      SizedBox(
                        width: 40,
                      ),
                      Container(
                          height: 36,
                          width: 60,
                          child: Image.asset('assets/images/eng_flag.png')),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                          height: 36,
                          width: 60,
                          child: Image(
                              image:
                                  AssetImage("assets/images/africa_flag.png"))),
                      SizedBox(
                        width: 30,
                      ),
                      Text("RSA",
                          style: TextStyle(color: Colors.white, fontSize: 14)),
                    ],
                  ),
                ),
                Positioned(
                    left: 160,
                    top: -5,
                    child: Image.asset(
                      'assets/images/cricket_ball.png',
                      height: 53,
                      width: 53,
                    ))
              ],
            ),
          ),
          Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8))),
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "The Oval, London",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "England won by 104 runs",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                )
              ],
            ),
          ),

          ///  Second match history
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 20,
                              width: 170,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 132, 4, 47),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8))),
                            ),
                            Container(
                              height: 20,
                              width: 170,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 146, 3, 51),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(8))),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 20,
                              width: 170,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 5, 61, 8),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(8))),
                            ),
                            Container(
                              height: 20,
                              width: 170,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 3, 100, 6),
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(8))),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 59,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("WI",
                          style: TextStyle(color: Colors.white, fontSize: 14)),
                      SizedBox(
                        width: 35,
                      ),
                      Container(
                          height: 36,
                          width: 60,
                          child: Image.asset('assets/images/WI_flag.png')),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                          height: 36,
                          width: 60,
                          child: Image(
                              image: AssetImage("assets/images/PAK_flag.png"))),
                      SizedBox(
                        width: 30,
                      ),
                      Text("PAK",
                          style: TextStyle(color: Colors.white, fontSize: 14)),
                    ],
                  ),
                ),
                Positioned(
                    left: 160,
                    top: -5,
                    child: Image.asset(
                      'assets/images/cricket_ball.png',
                      height: 53,
                      width: 53,
                    ))
              ],
            ),
          ),
          Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8))),
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Trent Bridge, Nottingham",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "West indies won by 7 wkts",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                )
              ],
            ),
          ),

          /// 3rd match history

          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 20,
                              width: 170,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 4, 4, 132),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8))),
                            ),
                            Container(
                              height: 20,
                              width: 170,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(8))),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 20,
                              width: 170,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 234, 145, 3),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(8))),
                            ),
                            Container(
                              height: 20,
                              width: 170,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 171, 3, 14),
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(8))),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 59,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("NZ",
                          style: TextStyle(color: Colors.white, fontSize: 14)),
                      SizedBox(
                        width: 35,
                      ),
                      Container(
                          height: 36,
                          width: 60,
                          child: Image.asset('assets/images/NZ_flag.png')),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                          height: 36,
                          width: 60,
                          child: Image(
                              image: AssetImage("assets/images/SL_flag.png"))),
                      SizedBox(
                        width: 30,
                      ),
                      Text(" SL",
                          style: TextStyle(color: Colors.white, fontSize: 14)),
                    ],
                  ),
                ),
                Positioned(
                    left: 160,
                    top: -5,
                    child: Image.asset(
                      'assets/images/cricket_ball.png',
                      height: 53,
                      width: 53,
                    ))
              ],
            ),
          ),
          Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8))),
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Sophia Gardens, Cardiff",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "New Zealand won by 10 wkts",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                )
              ],
            ),
          ),

          /// 4rth match history

          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 20,
                              width: 170,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 54, 1, 19),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8))),
                            ),
                            Container(
                              height: 20,
                              width: 170,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 3, 108, 7),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(8))),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 20,
                              width: 170,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 16, 24, 177),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(8))),
                            ),
                            Container(
                              height: 20,
                              width: 170,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(8))),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 59,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("AFG",
                          style: TextStyle(color: Colors.white, fontSize: 14)),
                      SizedBox(
                        width: 35,
                      ),
                      Container(
                          height: 36,
                          width: 60,
                          child: Image.asset('assets/images/AFG_flag.png')),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                          height: 36,
                          width: 60,
                          child: Image(
                              image: AssetImage("assets/images/AUS_flag.png"))),
                      SizedBox(
                        width: 30,
                      ),
                      Text("AUS",
                          style: TextStyle(color: Colors.white, fontSize: 14)),
                    ],
                  ),
                ),
                Positioned(
                    left: 160,
                    top: -5,
                    child: Image.asset(
                      'assets/images/cricket_ball.png',
                      height: 53,
                      width: 53,
                    ))
              ],
            ),
          ),
          Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8))),
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Country Ground, Britol",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Australia won by 7 wkts",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                )
              ],
            ),
          ),

          /// 5th match history

          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 20,
                              width: 170,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 36, 1, 13),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8))),
                            ),
                            Container(
                              height: 20,
                              width: 170,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 230, 22, 3),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(8))),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 20,
                              width: 170,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 3, 100, 6),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(8))),
                            ),
                            Container(
                              height: 20,
                              width: 170,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 206, 34, 3),
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(8))),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 59,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("RSA",
                          style: TextStyle(color: Colors.white, fontSize: 14)),
                      SizedBox(
                        width: 35,
                      ),
                      Container(
                          height: 36,
                          width: 60,
                          child: Image.asset('assets/images/africa_flag.png')),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                          height: 36,
                          width: 60,
                          child: Image(
                              image:
                                  AssetImage("assets/images/BALD_flag.png"))),
                      SizedBox(
                        width: 30,
                      ),
                      Text("BAN",
                          style: TextStyle(color: Colors.white, fontSize: 14)),
                    ],
                  ),
                ),
                Positioned(
                    left: 160,
                    top: -5,
                    child: Image.asset(
                      'assets/images/cricket_ball.png',
                      height: 53,
                      width: 53,
                    ))
              ],
            ),
          ),
          Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8))),
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "The Oval, London",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Bangladesh won by 21 runs",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                )
              ],
            ),
          ),

          /// 6th match history

          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 20,
                              width: 170,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 232, 33, 18),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8))),
                            ),
                            Container(
                              height: 20,
                              width: 170,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 158, 12, 2),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(8))),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 20,
                              width: 170,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 5, 61, 8),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(8))),
                            ),
                            Container(
                              height: 20,
                              width: 170,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 3, 100, 6),
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(8))),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 59,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("ENG",
                          style: TextStyle(color: Colors.white, fontSize: 14)),
                      SizedBox(
                        width: 35,
                      ),
                      Container(
                          height: 36,
                          width: 60,
                          child: Image.asset('assets/images/eng_flag.png')),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                          height: 36,
                          width: 60,
                          child: Image(
                              image: AssetImage("assets/images/PAK_flag.png"))),
                      SizedBox(
                        width: 30,
                      ),
                      Text("PAK",
                          style: TextStyle(color: Colors.white, fontSize: 14)),
                    ],
                  ),
                ),
                Positioned(
                    left: 160,
                    top: -5,
                    child: Image.asset(
                      'assets/images/cricket_ball.png',
                      height: 53,
                      width: 53,
                    ))
              ],
            ),
          ),
          Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8))),
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Trent Bridge, Nottingham",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Pakistan won by 7 wkts",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
