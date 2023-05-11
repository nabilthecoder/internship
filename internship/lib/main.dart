// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:internship/powerPlay.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: new ThemeData(scaffoldBackgroundColor: const Color(0xff1E1E1E)),
        debugShowCheckedModeBanner: false,
        title: 'My App',
        initialRoute: '/home',
        routes: {
          '/home': (context) => PowerPlayScreen(),
        });
  }
}
