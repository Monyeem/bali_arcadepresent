import 'package:flutter/material.dart';

import 'package:custom_radio_button/custom_radio_button.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/basic.dart';

class CheckScreen extends StatefulWidget {
  CheckScreen({Key key}) : super(key: key);
  static String id="CheckScreen";

  @override
  _CheckScreenState createState() => _CheckScreenState();
}

class _CheckScreenState extends State<CheckScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          home: Scaffold(
         body: Container(
           width: double.infinity,
           color: Colors.amber,
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[

               Center(
                 child: Container(
                   width: 280,
                   height: 80,
                   
                   decoration: BoxDecoration( 
                     shape: BoxShape.rectangle,
                     borderRadius: BorderRadius.all(Radius.circular(10)),
                     color: Colors.transparent                   ),
                   child: Center(child: Text('English',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.white),)),
                 ),
               ),
            




             ],
         ),
      ),
          ),
    );
  }
}