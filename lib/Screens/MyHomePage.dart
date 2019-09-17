import 'package:flutter/material.dart';

import 'package:cubamula/constants.dart';

import 'package:cubamula/Widgets/SocialMediaButton.dart';

import 'package:cubamula/Widgets/UserForm.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 100,
              width: 300,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/logo.png'),
                    fit: BoxFit.fill,
                  ),
                  // ...
                ),
              ),
            ), // Logoo
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Card(
                color: Color(0xFF2D3233),
                child: Container(
                  width: 380,
                  height: 600,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(

                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[


                        Column(
                          children: <Widget>[
                            SocialMediaButton(logoName:'images/google.png',  text: "Google",onPressed: (){
                              print("goolge");
                            },),
                            SocialMediaButton(text:"FaceBook", logoName:"images/facebook.png",onPressed: (){
                              print("facebook");
                            },),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(children: <Widget>[
                            Expanded(child: Divider(color: Colors.white,)),
                            Text(" OR ",style: TextStyle(color: Colors.white),),
                            Expanded(child: Divider(color: Colors.white,)),
                          ]),
                        ),  // Or Line
                        UserForm(),
                        GestureDetector(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Forget Password ? ",style: textStyle , textAlign: TextAlign.center,),
                        ),),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Text("Don't have an account?",style: textStyle,),
                                SizedBox(
                                  height: 10,
                                ),
                                GestureDetector(
                                    onTap: () {

                                    },
                                    child: Text(
                                      "SIGN UP NOW",
                                      style: textStyle.copyWith(
                                        color: Colors.lightBlueAccent,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

