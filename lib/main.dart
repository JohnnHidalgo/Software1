import 'package:basic/screens/addPeopleView.dart';
import 'package:basic/screens/home.dart';
import 'package:basic/screens/peopleView.dart';
import 'package:flutter/material.dart';

import 'models/peopleModel.dart';
import 'dao/peopleDAO.dart';
import 'dao/peopleRepositoryServiceDAO.dart';

//void main() => runApp(MyApp());
void main() async{
  await CreatePeopleDAO().initDatabase();
  runApp(MyApp());
}

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
