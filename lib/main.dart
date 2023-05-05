import 'package:flutter/material.dart';
import 'package:project/firstpage.dart';
import 'package:project/fourthscreen.dart';
import 'package:project/secondpage.dart';
import 'package:project/thirdscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const FirstPage(),
          '/second': (context) => const SecondPage(),
          '/third': (context) => const ThirdScreen(),
          '/fourth': (context) => const FourthScreen(),
        },
    );
  }
}
