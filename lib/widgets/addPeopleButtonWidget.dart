import 'package:basic/models/peopleModel.dart';
import 'package:basic/screens/addPeopleView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddPeopleButton extends StatelessWidget{
  List<People> listPeople;

  AddPeopleButton(this.listPeople);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 72.0,right: 72.0),
      child: CupertinoButton(
        child: const Text('Add'),
        color: Colors.blue,
        padding: EdgeInsets.all(16.0),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context)=> AddPeople(listPeople))
          );
        },
      ),
    );
  }
}