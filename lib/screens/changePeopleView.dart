import 'package:basic/models/peopleModel.dart';
import 'package:basic/widgets/addButtonWidget.dart';
import 'package:basic/widgets/addInputWidget.dart';
import 'package:basic/widgets/changeButtonWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ChangePeople extends StatefulWidget{
  List<People> lista;
  int index;


  ChangePeople(this.lista,this.index);

  @override
  _ChangePeople createState()=>_ChangePeople (lista,index);
}

class _ChangePeople extends State<ChangePeople> {
  List<People> lista;
  int index;

  _ChangePeople(this.lista,this.index);

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
        middle : Text('Change contact'),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(16.0),
        child:Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(8.0)),
            AddInput(nController,_nvalidate,'Name','Introducir nuevo Nombre',Icon(Icons.people),nametextInputType),
            AddInput(nuController,_nuvalidate,'Number','Introducir nuevo Numero',Icon(Icons.call),calltextInputType),
            ChangeButton(lista,nController,nuController,_nvalidate,_nuvalidate,index)

          ],
        ),
      ),
    );

  }
}
