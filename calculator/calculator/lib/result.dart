// import 'package:flutter/material.dart';

// class result extends StatefulWidget {
//   const result({super.key});

//   @override
//   State<result> createState() => _resultState();
// }

// class _resultState extends State<result> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.blue[900],
//           title: Text(
//             "ReSUlt",
//             style: TextStyle(
//                 color: Colors.white, 
//                 fontSize: 40, 
//                 fontWeight: FontWeight.bold),
//           ),
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(15),
//                   child: Container(
//                     child: Center(child: Text("Addition")),
//                     width: 380,
//                     height: 150,
//                     decoration: BoxDecoration(
//                       color: Colors.amber,
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Container(
//                   child: Center(child: Text("Multiplication")),
//                   width: 180,
//                   height: 300,
//                   decoration: BoxDecoration(
//                     color: Color.fromARGB(255, 112, 240, 74),
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//                 Container(
//                   child: Center(child: Text("Division")),
//                   width: 180,
//                   height: 300,
//                   decoration: BoxDecoration(
//                     color: Color.fromARGB(255, 87, 159, 241),
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 )
//               ],
//             ),
//             Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(15),
//                   child: Container(
//                     child: Center(child: Text("Subtraction")),
//                     width: 380,
//                     height: 150,
//                     decoration: BoxDecoration(
//                       color: Color.fromARGB(255, 144, 57, 232),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
