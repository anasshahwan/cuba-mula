import 'package:flutter/material.dart';

import 'package:cubamula/constants.dart';

class UserForm extends StatelessWidget {



  final _formKey = GlobalKey<FormState>();
  final scaffoldkey = new GlobalKey<ScaffoldState>();

  String _email,_passwrd;



  _isTheFromValidate(){
    final form = _formKey.currentState;
    if(form.validate()){
      form.save();
      print("Saveed");

    }
  }

  @override



  Widget build(BuildContext context) {
    return Form(
      key: _formKey,

      child: Column(
          children: <Widget>[
            TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }else if (!value.contains("@") && !value.contains(".")){
                    return "Email Is Invalid";
                  }
                  return null;
                },
                onSaved: (value){
                  _email = value;
                },
                style: new TextStyle(color: Colors.white),

                keyboardType: TextInputType.emailAddress,
                decoration: new InputDecoration(
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colors.white),
                  ),
                  contentPadding: EdgeInsets.all(8),
                  border: OutlineInputBorder(
                    borderRadius: new BorderRadius.all(
                        new Radius.circular(50.0)),
                  ),
                  hintText: 'Enter Email Adderss',
                  fillColor: Colors.white,
                  hintStyle: textStyle,
                )),
            SizedBox(height: 10,),
            TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }else if (value.length <  6 ){
                    return "password too short";
                  }
                  return null;
                },
                onSaved: (value){
                  _passwrd = value;
                },
                style: new TextStyle(color: Colors.white),
                obscureText: true,
                decoration: new InputDecoration(
                  prefixIcon: Icon(
                    Icons.security,
                    color: Colors.white,

                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colors.white),
                  ),
                  contentPadding: EdgeInsets.all(8),
                  border: OutlineInputBorder(
                    borderRadius: new BorderRadius.all(
                        new Radius.circular(50.0)),
                  ),
                  hintText: 'Enter Password',
                  fillColor: Colors.white,
                  hintStyle: textStyle,
                )),
            SizedBox(height: 10,),

            RaisedButton(
              onPressed: _isTheFromValidate,
              child: Text("Login ",style: textStyle,),
              color: redColor,
              textColor: Color(0xFFBF2640)  ,
            )
          ]
      ),

    );
  }
}