import 'package:flutter/material.dart';
import 'screens/top_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Qin Magic Camera',
      theme: ThemeData(
        primaryColor: Colors.lightBlue,
      ),
      home: TopPage(title: 'Qin Magic Camera'),
    );
  }
}


