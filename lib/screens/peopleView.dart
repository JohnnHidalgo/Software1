import 'package:basic/models/peopleModel.dart';
import 'package:basic/widgets/addInputWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'addPeopleView.dart';
import 'changePeopleView.dart';

class PeopleView extends StatefulWidget{
  People people;
  int index;
  List<People> lista;

  PeopleView(this.people, this.index, this.lista);

  @override
  _PeopleView createState()=>_PeopleView(people,index,lista);
}

class _PeopleView extends State<PeopleView>{
  People people;
  int index;
  List<People> lista;

  _PeopleView(this.people, this.index, this.lista);

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
        middle : Text('Contact'),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Column(
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 100.0,
                backgroundImage:NetworkImage("http://psquare.co.za/wp-content/uploads/2017/02/man_avatar-512.png"),
              ),
            ),
            Text(people.name,
              style:TextStyle(
                fontSize: 30.0
              ),
            ),
            Text(people.number,
              style:TextStyle(
                fontSize: 25.0
              ),
            ),

            Row(
              children: <Widget>[
                CupertinoButton(
                    child: Text('Delete'),

                    onPressed:() {

                      showDialog(
                        context: context,
                        child: CupertinoAlertDialog(
                          title: Text('Estas seguro de eliminar este contacto?'),
                          content: new Text("This is my content"),
                          actions: <Widget>[
                            CupertinoDialogAction(
                              isDefaultAction: true,
                              child: Text("Yes"),
                              onPressed:(){
                                lista.removeAt(index);
                                Navigator.pushNamed(context, '/Home');
                              },
                            ),
                            CupertinoDialogAction(
                              child: Text("No"),
                              onPressed: (){
                                Navigator.pop(context);
                              },
                            )
                          ],
                        ),
                      );


                    }
                ),
                CupertinoButton(
                    child: Text('Edit'),

                    onPressed:() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=> ChangePeople(lista,index))
                      );
                    }
                ),
              ],
            ),



          ],
        ),
      ),
    );
  }
}