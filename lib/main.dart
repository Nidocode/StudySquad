// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:study_squad/classScreen.dart';
import 'package:study_squad/firstScreen.dart';
import 'package:study_squad/loginScreen.dart';
import 'package:study_squad/signupScreen.dart';


void main() {
  runApp(const MyApp());
}

// Nada
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study Squad',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const firstscreen(),
        "classScreen":(context) => const Classscreen(),
        "login": (context) => const Loginscreen(),
        "signup" : (context) => const Signupscreen(),
        
        
      },
    );
  }
}




