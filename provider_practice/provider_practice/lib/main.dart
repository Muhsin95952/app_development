import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/provider_class.dart';
import 'package:provider_practice/provider_practice.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ColorProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: ProviderPractice());
    ;
  }
}
