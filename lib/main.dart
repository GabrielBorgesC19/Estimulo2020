import 'package:estimulo2020/pages/mentoria.page.dart';
import 'package:estimulo2020/pages/login.page.dart';

import 'package:estimulo2020/pages/reports.page.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Estimulo 2020',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: LoginPage(),
    );
  }
}
