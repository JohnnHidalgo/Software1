import 'package:basic/models/people.dart';
import 'package:flutter/material.dart';

class AddButton extends StatefulWidget{
  List<People> lista;
  TextEditingController Namecontroller;
  TextEditingController Cellcontroller;


  AddButton(this.lista, this.Namecontroller, this.Cellcontroller);

  @override
  _AddButton createState() =>_AddButton(lista,Namecontroller,Cellcontroller);
}

class _AddButton extends State<AddButton>{
  List<People> lista;
  TextEditingController Namecontroller;
  TextEditingController Cellcontroller;
  _AddButton(this.lista, this.Namecontroller, this.Cellcontroller);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
          child: Text('Add more'),
          onPressed: (){
            lista.add(People(Namecontroller.text, Cellcontroller.text));
          }
      ),
    );
  }
}