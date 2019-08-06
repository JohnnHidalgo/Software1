import 'package:basic/models/people.dart';
import 'package:flutter/material.dart';

class PeopleCard extends StatelessWidget{

  People people;

  PeopleCard(this.people);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child:Row(
        children: <Widget>[
          CircleAvatar(backgroundImage:NetworkImage("http://psquare.co.za/wp-content/uploads/2017/02/man_avatar-512.png")),
          Padding(padding: EdgeInsets.all(8.0)),
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(people.name,style: TextStyle(fontSize: 18, color: Colors.black),),
                  Text(people.number,style: TextStyle(fontSize: 14, color: Colors.grey),),
                ],
              ),
          ),
          IconButton(
              icon: Icon(Icons.delete),
              onPressed: null
          ),

        ],
      ),
    );
  }

}