import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class customizeContainer extends StatefulWidget {
  customizeContainer({required this.myColor, this.myChild});
  Color myColor;
  Widget?  myChild;
 



  @override
  State<customizeContainer> createState() => _customizeContainerState();
}

class _customizeContainerState extends State<customizeContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: widget.myColor,
        borderRadius: BorderRadius.circular(10)
      ),
      child: myChild,
    );
  // }
}
}
