import 'package:basic/screens/addPeopleView.dart';
import 'package:basic/screens/home.dart';
import 'package:basic/screens/peopleView.dart';
import 'package:flutter/material.dart';

import 'models/peopleModel.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  List<People> listPeople=[];
  People people;
  int index;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(listPeople),


      initialRoute: '/Home',
      routes: {
        '/Home': (context) => Home(listPeople),
        '/AddPeople': (context) => AddPeople(listPeople),
        '/PeopleView': (context) => PeopleView(people,index,listPeople),

      },

    );
  }
}
