import 'package:my_app/pages/calc_page_change.dart';
import 'package:my_app/pages/home_page_change.dart';
import 'package:my_app/pages/home_page.dart';
import 'package:my_app/pages/calc_page.dart';
import 'nav_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavBar(),
      theme: ThemeData(brightness: Brightness.dark),
    );
  }
}
