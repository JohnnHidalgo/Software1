import 'package:basic/models/people.dart';
import 'package:basic/widgets/people_card.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home>{

  List<People> listPeople =[
    People('Johnn Hidalgo','70595607'),
    People('Jaime Hidalgo','70595153'),
    People('Joaqi Hidalgo','71235407'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),

      body:Container(
        child: ListView.builder(
            itemCount: listPeople.length,
            itemBuilder: (context, int){
              return PeopleCard(listPeople[int]);
            }

        )

      ),
    );
  }
}