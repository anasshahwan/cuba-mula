
import 'package:flutter/material.dart';
import 'package:cubamula/constants.dart';

class SocialMediaButton extends StatelessWidget {

  SocialMediaButton({@required this.text,@required this.logoName,@required this.onPressed});
  String text,logoName;
  GestureTapCallback onPressed;


  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Container(
              child: RawMaterialButton(
                fillColor: Colors.white,
                onPressed: onPressed,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 20,
                      width: 20.0,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('$logoName'),
                            fit: BoxFit.fill,
                          ),
                          // ...
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(child: Text("Connect With $text",style: textStyle.copyWith(
                      color:Colors.black
                    ),),),

                  ],),
              ),
            ),
          ),

        ]);
  }
}
