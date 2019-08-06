import 'package:flutter/material.dart';

class AddInput extends StatelessWidget{
  TextEditingController controller;
  bool _validate;
  String _hintText;
  String _errorText;
  Icon _icon;
  FocusNode passFocus;
  TextInputType textInputType;

  AddInput(this.controller, this._validate, this._hintText, this._errorText, this._icon, this.textInputType);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextField(
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.black,
        ),
        onSubmitted: (String valor){
          FocusScope.of(context).requestFocus(passFocus);
        },
        keyboardType: textInputType,
        controller: controller,
        decoration: InputDecoration(
          border: new OutlineInputBorder(
              borderSide: new BorderSide(color: Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(30.0))
          ),
          icon: _icon,
          errorText: _validate ? _errorText: null,
          hintText: _hintText,
        ),

      ),
    );
  }

}