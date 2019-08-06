import 'package:basic/models/people.dart';
import 'package:basic/widgets/add_button.dart';
import 'package:basic/widgets/add_input.dart';
import 'package:flutter/material.dart';

class AddPeople extends StatefulWidget{
  List<People> lista;


  AddPeople(this.lista);

  @override
  _AddPeople createState()=>_AddPeople (lista);
}

class _AddPeople extends State<AddPeople> {
  List<People> lista;

  _AddPeople(this.lista);

  String inputValue = "";
  bool _nvalidate = false;
  TextEditingController nController = new TextEditingController();


  bool _nuvalidate = false;
  TextEditingController nuController = new TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Container(
        color: Colors.blueGrey,

        child:Column(
          children: <Widget>[

            AddInput(nController,_nvalidate,'Name','Introducir Nombre',Icon(Icons.people)),
            AddInput(nuController,_nuvalidate,'Number','Introducir Numero',Icon(Icons.call)),

            AddButton(lista,nController,nuController,_nvalidate,_nuvalidate),
          ],
        ),
      ),
    );

  }
}