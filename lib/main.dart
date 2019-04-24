import 'package:flutter/material.dart';
import 'package:health_app/pages/home_page.dart';
import 'package:flutter/widgets.dart';

Future<void> main() async {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      title: 'HealthApp',
      theme: new ThemeData(
        primarySwatch: Colors.yellow,
        buttonColor: Colors.black,
      ),
      home: new HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

