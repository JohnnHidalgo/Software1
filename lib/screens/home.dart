import 'package:basic/models/peopleModel.dart';
import 'package:basic/widgets/addPeopleButtonWidget.dart';
import 'package:basic/widgets/peopleListWidget.dart';
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