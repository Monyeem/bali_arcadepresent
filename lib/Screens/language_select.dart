import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';

import 'login_page.dart';
import 'dart:async';

class LanguageSelect extends StatefulWidget {
  LanguageSelect({Key key}) : super(key: key);
  static String id='LanguageSelect';

  @override
  _LanguageSelectState createState() => _LanguageSelectState();
}

class _LanguageSelectState extends State<LanguageSelect> {
  bool isSelectedEnglish=false;
  bool isSelectedBangla=false;


 


 
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
         home: Scaffold(
          body: Container( 
          decoration: BoxDecoration(  
              image: DecorationImage(
                colorFilter: 
        ColorFilter.mode(Colors.black.withOpacity(0.3), 
        BlendMode.dstOut),
                image: AssetImage("images/language_select.jpg"),
                fit: BoxFit.fill,
              )
            ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
             
                 Image(
                   width: double.infinity,
                   height: 70,
                   image: AssetImage(''),
                   color: Color(0xff660066),
                 ),
//              Text('Super Market',
//                  style: TextStyle(
//                    color: Colors.white,
//                      fontSize: 30),
//                ),
            Container(
              width: 300,
              height: 100,
              child: Image(
                image: AssetImage("images/logo_purple.png"),
              ),
            ),


              SizedBox(
                height: 25,
              ),
                 Text(
                    'Please Choose a Language',
                   style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Color(0xff660066)),
                    ),
      
                    SizedBox(
                        height: 25,
                      ),
                     Container(
                         width: 280,
                         height: 55,
                         child: RaisedButton(
                           elevation: 4,
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(10.0),
                           side: BorderSide(color: Colors.white,width: 2)),
                         onPressed: () {
                           setState(() {
                             isSelectedBangla=false;
                             isSelectedEnglish=true;
                            
                             
                           });
                         },
                         color: isSelectedEnglish?Color(0xff660066):Colors.transparent,
                         textColor: Colors.white,
                         child: Text("English".toUpperCase(),
                           style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500),textAlign: TextAlign.start,),
                       ),
                       ),
                        SizedBox(
                        height: 20,
                      ), 
                     
                    Container(
                         width: 280,
                         height: 55,
                         child: RaisedButton(
                                
                                elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side: BorderSide(color: Colors.white,width: 2)),
                              onPressed: () {
                               setState(() {
                                  isSelectedBangla=true;
                                  isSelectedEnglish=false;
                                 
                               });
                              },
                              color: isSelectedBangla?Color(0xff660066):Colors.transparent,
                              textColor: Colors.white,
                              child: Text("বাংলা".toUpperCase(),
                                style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w500),textAlign: TextAlign.start,),
                            ),
                       ),


                         SizedBox(
                        height: 35,
                      ),  
                    Container(
                         width: 280,
                         height: 50,
                         child: RaisedButton(
                                
                                elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.0),
                                side: BorderSide.none),
                              onPressed: () {
                               setState(() {
                                if(isSelectedEnglish==true)
                                {
                                   Navigator.pushNamed(context, LoginPage.id);
                                }
                               });
                              },
                              color:Color(0xff660066),
                              textColor: Colors.white,
                              child: Text("Continue".toUpperCase(),
                                style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800)),
                            ),
                       ),




            ],
          ),
          ),
        ),

      );
       }


}