import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/provider_class.dart';

class ProviderPractice extends StatelessWidget {
  const ProviderPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider Practice",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: 
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: context.watch<ColorProvider>().color1,
                  borderRadius: BorderRadius.circular(15)
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: 
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: context.watch<ColorProvider>().color2,
                  borderRadius: BorderRadius.circular(15)
                ),
              ),
            ),
          ),
           Center(
             child: Container(
              height: 50,
              width: 100,
                 child: Center( 
                     child: 
                     GestureDetector(
                       onTap: (){
                     context.read<ColorProvider>().swapColor();
                       },
                       child: Text("Swap",
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 30,
                         fontWeight: FontWeight.w700,
                       ),),
                     ),
                   ),
                 decoration: BoxDecoration(
                   color: Colors.black,
                   borderRadius: BorderRadius.circular(15),
                   border: Border.all(color: Colors.black, width: 3)
                 ),
               ),
           ),
           SizedBox(height: 20,)
        ],
      ),

    );
  }
}