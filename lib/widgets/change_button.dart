import 'package:basic/models/people.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class ChangeButton extends StatefulWidget{
  List<People> lista;
  TextEditingController Namecontroller;
  TextEditingController Cellcontroller;
  bool Namevalidate = false;
  bool Cellvalidate = false;
  int index;

  ChangeButton(this.lista, this.Namecontroller, this.Cellcontroller, this.Namevalidate, this.Cellvalidate,this.index);

  @override
  _ChangeButton createState() =>_ChangeButton(lista,Namecontroller,Cellcontroller,Namevalidate,Cellvalidate,index);
}

class _ChangeButton extends State<ChangeButton>{
  List<People> lista;
  TextEditingController Namecontroller;
  TextEditingController Cellcontroller;
  bool Namevalidate = false;
  bool Cellvalidate = false;
  int index;

  _ChangeButton(this.lista, this.Namecontroller, this.Cellcontroller, this.Namevalidate, this.Cellvalidate,this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CupertinoButton(
          color: Colors.blue,
          child: Text('Change contact'),
          onPressed: (){
            setState(() {
              Namecontroller.text.isEmpty ? Namevalidate = true : Namevalidate = false;
              Cellcontroller.text.isEmpty ? Cellvalidate = true : Cellvalidate = false;
            });
            if(Namevalidate == true || Cellvalidate == true){
              Toast.show("Ingrese Datos por favor", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
            }
            else{
              lista.removeAt(index);
              lista.insert(index,People(Namecontroller.text, Cellcontroller.text));
//              lista.add(People(Namecontroller.text, Cellcontroller.text));
              Namecontroller.clear();
              Cellcontroller.clear();
              Toast.show("Cambio realizado", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM,backgroundColor: Colors.green);
//              Navigator.pop(context);
              Navigator.pushNamed(context, '/Home');


            }
          }
      ),
    );
  }
}