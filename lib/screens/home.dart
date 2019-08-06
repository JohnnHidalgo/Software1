import 'package:basic/models/people.dart';
import 'package:basic/widgets/people_add_button.dart';
import 'package:basic/widgets/people_list.dart';
import 'package:flutter/material.dart';

import 'addPeopleView.dart';

class Home extends StatefulWidget{
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home>{

  List<People> listPeople=[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 2.0,
      ),

      body:Container(
        child: ListView(
          children: <Widget>[
            PeopleList(listPeople),
            AddPeopleButton(listPeople),
          ],
        ),
      )
    );
  }
}