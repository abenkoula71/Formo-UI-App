import 'package:flutter/material.dart';
import 'package:tr/screen%201.dart';
import 'package:tr/scren2.dart';

import 'firsetScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  First(),
    );
  }
}
