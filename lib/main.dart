import 'package:flutter/material.dart';
import 'view/page/page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pie Love',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: const Color(0xFF554AB2),
        accentColor: const Color(0xFF554AB2),
      ),
      home: HomePage(),
    );
  }
}