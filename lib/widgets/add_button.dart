import 'package:basic/models/people.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class AddButton extends StatefulWidget{
  List<People> lista;
  TextEditingController Namecontroller;
  TextEditingController Cellcontroller;
  bool Namevalidate = false;
  bool Cellvalidate = false;

  AddButton(this.lista, this.Namecontroller, this.Cellcontroller, this.Namevalidate, this.Cellvalidate);

  @override
  _AddButton createState() =>_AddButton(lista,Namecontroller,Cellcontroller,Namevalidate,Cellvalidate);
}

class _AddButton extends State<AddButton>{
  List<People> lista;
  TextEditingController Namecontroller;
  TextEditingController Cellcontroller;
  bool Namevalidate = false;
  bool Cellvalidate = false;

  _AddButton(this.lista, this.Namecontroller, this.Cellcontroller, this.Namevalidate, this.Cellvalidate);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CupertinoButton(
        color: Colors.blue,
        child: Text('Add more'),
        onPressed: (){
          setState(() {
            Namecontroller.text.isEmpty ? Namevalidate = true : Namevalidate = false;
            Cellcontroller.text.isEmpty ? Cellvalidate = true : Cellvalidate = false;
          });
          if(Namevalidate == true || Cellvalidate == true){
            Toast.show("Ingrese Datos por favor", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
          }
          else{
            lista.add(People(Namecontroller.text, Cellcontroller.text));
            Namecontroller.clear();
            Cellcontroller.clear();
            Toast.show("Registro Completado", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM,backgroundColor: Colors.green);
            Navigator.pop(context);
          }
        }
      ),
    );
  }
}