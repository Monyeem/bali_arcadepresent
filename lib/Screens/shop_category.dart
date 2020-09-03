import 'package:bali_arcade/Screens/arts_handicrafts.dart';
import 'package:bali_arcade/Screens/foodCourt.dart';
import 'package:flutter/material.dart';


class ShopCategory extends StatefulWidget {
  ShopCategory({Key key}) : super(key: key);
  static String id='ShopCategoryScreen';
  @override
  _ShopCategoryState createState() => _ShopCategoryState();
}

class _ShopCategoryState extends State<ShopCategory> {
  bool isPressed1=true;
  bool isPressed2=true;
  List<bool> checkedColor=[false,false,false,false,false,false,false];
  List<bool>isBottmPressed=[false,false,false,false,false];

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter:
                ColorFilter.mode(Colors.black.withOpacity(0.7),
                    BlendMode.dstATop),
                image: AssetImage("images/shop_bg.jpg"),
                fit: BoxFit.fill,
              )
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top:30.0,left: 20,right: 20),
                child: TopAppBar(),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  width: 320,
                  height: 460,
                  child: RaisedButton(
                      elevation: 16,
                      splashColor: null,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide.none),
                      onPressed: () {

                      },
                      color: Colors.grey[800].withAlpha(80),
                      child:Column(
                        children: <Widget>[
                          SizedBox(
                            height: 10,

                          ),


                          Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Category',style: TextStyle(color: Colors.white,fontSize: 20,)),
                              )),


                          SizedBox(
                            height: 5,

                          ),

                          Column(
                            children: <Widget>[
                              GestureDetector(

                                onTap:(){
                                  setState(() {
                                    Navigator.pushNamed(context,FoodCourt.id);
                                    checkedColor=[true,false,false,false,false,false,false];
                                  });
                                },
                                child: Container(
                                  color: checkedColor[0]?Color(0xff660066):Colors.transparent,
                                  child: Row(


                                    children: <Widget>[
                                      Icon(
                                        Icons.near_me,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Arts and Handicrafts',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16
                                        ),
                                      ),
                                      SizedBox(
                                        width: 60,
                                      ),
                                      Icon(
                                        Icons.arrow_right,
                                        size: 40,
                                        color: Colors.white,
                                      ),
                                    ],

                                  ),
                                ),
                              ),
                              Divider(
                                color: Colors.white,
                                thickness: 1,
                              ),
                              GestureDetector(

                                onTap:(){
                                  setState(() {

                                    checkedColor=[false,true,false,false,false,false,false];
                                  });
                                },
                                child: Container(
                                  color: checkedColor[1]?Color(0xff660066):Colors.transparent,
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.near_me,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Jewelry',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16
                                        ),
                                      ),
                                      SizedBox(
                                        width: 152,
                                      ),
                                      Icon(
                                        Icons.arrow_right,
                                        size: 40,
                                        color: Colors.white,
                                      ),
                                    ],

                                  ),
                                ),
                              ),
                              Divider(
                                color: Colors.white,
                                thickness: 1,
                              ),
                              GestureDetector(

                                onTap:(){
                                  setState(() {

                                    checkedColor=[false,false,true,false,false,false,false];
                                  });
                                },
                                child: Container(
                                  color: checkedColor[2]?Color(0xff660066):Colors.transparent,
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.near_me,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Shoes ',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16
                                        ),
                                      ),
                                      SizedBox(
                                        width: 158,
                                      ),
                                      Icon(
                                        Icons.arrow_right,
                                        size: 40,
                                        color: Colors.white,
                                      ),
                                    ],

                                  ),
                                ),
                              ),
                              Divider(
                                color: Colors.white,
                                thickness: 1,
                              ),
                              GestureDetector(

                                onTap:(){
                                  setState(() {

                                    checkedColor=[false,false,false,true,false,false,false];
                                  });
                                },
                                child: Container(
                                  color: checkedColor[3]?Color(0xff660066):Colors.transparent,
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.near_me,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Garments',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16
                                        ),
                                      ),
                                      SizedBox(
                                        width: 135,
                                      ),
                                      Icon(
                                        Icons.arrow_right,
                                        size: 40,
                                        color: Colors.white,
                                      ),
                                    ],

                                  ),
                                ),
                              ),
                              Divider(
                                color: Colors.white,
                                thickness: 1,
                              ),
                              GestureDetector(

                                onTap:(){
                                  setState(() {

                                    checkedColor=[false,false,false,false,true,false,false];
                                  });
                                },
                                child: Container(
                                  color: checkedColor[4]?Color(0xff660066):Colors.transparent,
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.near_me,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Electronics',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16
                                        ),
                                      ),
                                      SizedBox(
                                        width: 128,
                                      ),
                                      Icon(
                                        Icons.arrow_right,
                                        size: 40,
                                        color: Colors.white,
                                      ),
                                    ],

                                  ),
                                ),
                              ),
                              Divider(
                                color: Colors.white,
                                thickness: 1,
                              ),
                              GestureDetector(

                                onTap:(){
                                  setState(() {

                                    checkedColor=[false,false,false,false,false,true,false];
                                  });
                                },
                                child: Container(
                                  color: checkedColor[5]?Color(0xff660066):Colors.transparent,
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.near_me,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Eye Wears',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16
                                        ),
                                      ),
                                      SizedBox(
                                        width: 132,
                                      ),
                                      Icon(
                                        Icons.arrow_right,
                                        size: 40,
                                        color: Colors.white,
                                      ),
                                    ],

                                  ),
                                ),
                              ),
                              Divider(
                                color: Colors.white,
                                thickness: 1,
                              ),
                              GestureDetector(

                                onTap:(){
                                  setState(() {

                                    checkedColor=[false,false,false,false,false,false,true];
                                  });
                                },
                                child: Container(
                                  color: checkedColor[6]?Color(0xff660066):Colors.transparent,
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.near_me,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Computers',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16
                                        ),
                                      ),
                                      SizedBox(
                                        width: 127,
                                      ),
                                      Icon(
                                        Icons.arrow_right,
                                        size: 40,
                                        color: Colors.white,
                                      ),
                                    ],

                                  ),
                                ),
                              ),
                              Divider(
                                color: Colors.white,
                                thickness: 1,
                              ),

                            ],
                          ),






                        ],
                      )
                  )
              ),

              SizedBox(
                height: 20,
              ),



              Container(
                width: 320,
                height: 70,
                child: RaisedButton(
                  elevation: 25,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      side: BorderSide.none),
                  onPressed: () {

                  },
                  color:Colors.grey[800],
                  textColor: Colors.white,
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 3,

                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.grey[800],
                        child: IconButton(
                          icon: Image.asset('images/icon_cartab.png',color:isBottmPressed[1]? Color(0xff660066):Colors.white,),
                          onPressed: (){
                            setState(() {
                              isPressed1=null;
                              isBottmPressed=[true,false,false,false,false];
                              print('pressed');
                            });
                          },

                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.grey[800],
                        child: IconButton(
                          icon: Image.asset('images/icon_shoptab.png',color:isBottmPressed[1]? Color(0xff660066):Colors.white,),
                          onPressed: (){
                            setState(() {
                              isPressed1=null;
                              isBottmPressed=[false,true,false,false,false];
                              print('pressed2');
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.grey[800],
                        child: IconButton(
                          icon: Icon(Icons.home,size: 40,color:isPressed1??isBottmPressed[2]? Color(0xff660066):Colors.white,),
                          onPressed: (){
                            setState(() {
                              isPressed1=null;
                              isBottmPressed=[false,false,true,false,false];
                              print('pressed2');
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.grey[800],
                        child: IconButton(
                          icon: Image.asset('images/icon_foodtab.png',color:isBottmPressed[1]? Color(0xff660066):Colors.white,),
                          onPressed: (){
                            setState(() {
                              isPressed1=null;
                              // isPressed2=true;
                              // isPressed1=false;
                              isBottmPressed=[false,false,false,true,false];
                              print('pressed2');
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.grey[800],

                        child: IconButton(
                          icon: Image.asset('images/icon_cinepaxtab.png',color:isBottmPressed[1]? Color(0xff660066):Colors.white,),
                          onPressed: (){
                            setState(() {
                              isPressed1=null;
                              isBottmPressed=[false,false,false,false,true];
                              print('pressed2');
                            });
                          },
                        ),
                      ),

                    ],
                  ),
                ),
              ),




            ],
          ),
        ),
      ),
    );

  }
}


class TopAppBar extends StatelessWidget {
  const TopAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide.none),
        color: Colors.grey[800],
        elevation: 8,
        onPressed: (){

        },
        child: Container(
          color: Colors.grey[800],
          padding: EdgeInsets.all(5),
          child: Row(children: [

            Icon(
              Icons.search,
              color: Colors.white,
              size: 30,

            ),
            SizedBox(
              width: 5,
            ),

            Container(
              width: 180,
              height: 30,
              child:TextField(
                style: TextStyle(
                    color: Colors.white54
                ),
                cursorColor: Colors.white,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Search  for Category',
                  hintStyle: TextStyle(color: Colors.white54,fontSize: 16),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide.none),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.white,
                        width: 1
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(
              width: 10,
            ),

            IconButton(
              iconSize: 30,
              icon: Text('Back',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
              onPressed: () {
                // scaffoldKey.currentState.openEndDrawer();
              },
            ),


          ]),
        ),
      ),
    );
  }
}
