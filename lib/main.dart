import 'package:basic/screens/home.dart';
import 'package:flutter/material.dart';

import 'models/people.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  List<People> listPeople=[];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(listPeople),
    );
  }
}
