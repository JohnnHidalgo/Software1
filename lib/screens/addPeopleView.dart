import 'package:basic/models/people.dart';
import 'package:basic/widgets/add_button.dart';
import 'package:basic/widgets/add_input.dart';
import 'package:flutter/cupertino.dart';
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
  TextInputType nametextInputType = TextInputType.text;
  bool _nuvalidate = false;
  TextEditingController nuController = new TextEditingController();
  TextInputType calltextInputType = TextInputType.number;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle : Text('Register'),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(16.0),
        child:Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(8.0)),
            AddInput(nController,_nvalidate,'Name','Introducir Nombre',Icon(Icons.people),nametextInputType),
            AddInput(nuController,_nuvalidate,'Number','Introducir Numero',Icon(Icons.call),calltextInputType),
            AddButton(lista,nController,nuController,_nvalidate,_nuvalidate),

          ],
        ),
      ),
    );

  }
}
