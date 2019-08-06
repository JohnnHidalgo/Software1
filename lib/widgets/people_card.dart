import 'package:basic/models/people.dart';
import 'package:flutter/material.dart';

class PeopleCard extends StatelessWidget{

  People people;

  PeopleCard(this.people);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amberAccent,
      child:Column(
        children: <Widget>[
          Text(people.name),
          Text(people.number),
        ],
      ),
    );
  }

}