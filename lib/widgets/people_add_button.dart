import 'package:basic/models/people.dart';
import 'package:basic/screens/addPeopleView.dart';
import 'package:flutter/material.dart';

class AddPeopleButton extends StatelessWidget{
  List<People> listPeople;

  AddPeopleButton(this.listPeople);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 80.0,
        height: 40.0,
        child: InkWell(
          splashColor: Colors.tealAccent,
          highlightColor: Colors.tealAccent,
          borderRadius: BorderRadius.circular(20.0),
          child: Center(
            child: Text('Add'),
          ),
          onTap: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> AddPeople(listPeople))
            );
          },
        ),
      ),
    );
  }
}