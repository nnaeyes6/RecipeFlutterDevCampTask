import 'package:flutter/material.dart';
import 'package:recipe_app_devcamp/navbar/bottom_navbar.dart';
import 'package:recipe_app_devcamp/navbar/favorite.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipe App',
      theme: ThemeData(primarySwatch: Colors.green, fontFamily: 'Rubik'),
      home: const BottonNavigationBarPage(),
    );
  }
}

// ignore: must_be_immutable