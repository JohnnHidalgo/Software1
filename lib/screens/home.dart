import 'package:basic/models/people.dart';
import 'package:basic/widgets/people_add_button.dart';
import 'package:basic/widgets/people_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'addPeopleView.dart';

class Home extends StatefulWidget{
  List<People> listPeople;


  Home(this.listPeople);

  @override
  _Home createState() => _Home(listPeople);
}

class _Home extends State<Home>{

  List<People> listPeople;

  _Home(this.listPeople);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle : Text('Home'),
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