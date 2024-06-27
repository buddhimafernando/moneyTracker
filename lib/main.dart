import 'package:flutter/material.dart';
import 'package:money_tracking/srceens/sample/pagination.dart';
import 'package:money_tracking/srceens/splashcreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: Color.fromARGB(255, 0, 100, 0),
        cardColor: Color.fromARGB(255, 247, 247, 247),
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          headline2: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
        )
      ),
      home: SamplePagination(),
    );
  }
}
