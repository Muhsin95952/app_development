import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListViewData {
  String text;
  IconData icon;
  
  ListViewData({
    required this.text, 
    required this.icon
  });
}

List<ListViewData> listViewData =[
  ListViewData(text: "Schedule", icon: Icons.calendar_month),
  ListViewData(text: "Teams", icon: Icons.people),
  ListViewData(text: "Venue", icon: Icons.location_city),
  ListViewData(text: "Points Table", icon: Icons.content_paste),
  ListViewData(text: "ODI Ranking", icon: Icons.graphic_eq),
  ListViewData(text: "History", icon: Icons.history),
];