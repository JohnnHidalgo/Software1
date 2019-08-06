import 'package:basic/models/people.dart';
import 'package:basic/widgets/people_card.dart';
import 'package:flutter/material.dart';

class PeopleList extends StatefulWidget{
  List <People> listPeople;

  PeopleList(this.listPeople);

  _PeopleList  createState() => _PeopleList(listPeople);
}

class _PeopleList extends State <PeopleList> {

  List <People> listPeople;
  _PeopleList(this.listPeople);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
        child: ListView.builder(
            itemCount: listPeople.length,
            itemBuilder: (context, int){
              return PeopleCard(listPeople[int]);
            }
        )


    );
  }

}