import 'package:bali_arcade/Screens/AmusementScreen.dart';
import 'package:bali_arcade/Screens/cineplex.dart';
import 'package:bali_arcade/Screens/foodCourt.dart';
import 'package:bali_arcade/Screens/food_category.dart';
import 'package:bali_arcade/Screens/my_order.dart';
import 'package:bali_arcade/Screens/parking.dart';
import 'package:bali_arcade/Screens/read_book.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:bali_arcade/Constant_folder/custom_card.dart';
import 'package:bali_arcade/Constant_folder/CustomDrawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'shop_category.dart';
import 'package:bali_arcade/Screens/cart.dart';
import 'package:bali_arcade/Screens/orderNow.dart';
var scaffoldKey = GlobalKey<ScaffoldState>();

class DashBoard extends StatefulWidget {
  DashBoard({Key key}) : super(key: key);
  static String id='DashBoardScreen';

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> with SingleTickerProviderStateMixin{
  bool isPressed1=true;
  bool isPressed2=true;
  List<bool>isBottmPressed=[false,false,false,false,false];
  List<bool>isCardPressed=[false,false,false,false,false,false];


  @override
  Widget build(BuildContext context) {

    return Container(
      child: MaterialApp(
        home: Scaffold(
          key: scaffoldKey,
          endDrawer: Drawer(
            child:CustomDrawer(),
          ),
          body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  colorFilter:
                  ColorFilter.mode(Colors.black.withOpacity(0.7),
                      BlendMode.dstATop),
                  image: AssetImage("images/home_screen.jpg"),
                  fit: BoxFit.fill,
                )
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top:35.0,left: 20,right: 20),
                  child: TopAppBar(),
                ),
                SizedBox(
                  height: 20,

                ),
                Text('WelCome to Bali Arcade',style: TextStyle(color: Color(0xff660066),fontSize: 25,fontWeight:FontWeight.w700),),
                SizedBox(
                  height: 2,

                ),
                Text('Lorem ipsum is one of the best place',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight:FontWeight.w400),),

                SizedBox(
                  height: 70,

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 110,
                      height: 90,
                      child: RaisedButton(
                        elevation: 16,
                        splashColor: Color(0xff660066),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            side: BorderSide.none),
                        onPressed: () {
                          setState(() {
                            isPressed2=null;
                            isCardPressed=[true,false,false,false,false,false];
                            // Navigator.pushNamed(context, ShopCategory.id);
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Parking()));


                          });

                        },
                        color: isCardPressed[0]?Color(0xff660066):Colors.grey[800],
                        textColor: Colors.white,
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top:12.0,bottom: 8,right: 12,left: 12),
                              child: SizedBox(
                                  height: 40,
                                  width: 50,

                                  child:
                                  //Icon(FontAwesomeIcons.bookReader,size: 45,color: Colors.white,),)
                                  Image.asset('images/icon_cartab.png',color: Colors.white,)),
                            ),

                            Text(
                              'Car Parking',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),



                    SizedBox(
                      width: 30,

                    ),
                    Container(
                      width: 110,
                      height: 90,
                      child: RaisedButton(
                        elevation: 16,
                        splashColor: Color(0xff660066),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            side: BorderSide.none),
                        onPressed: () {
                          setState(() {
                            isPressed2=null;
                            isCardPressed=[false,true,false,false,false,false];
                            Navigator.pushNamed(context, ShopCategory.id);
                          });

                        },
                        color:isCardPressed[1]?Color(0xff660066):Colors.grey[800],
                        textColor: Colors.white,
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top:12.0,bottom: 8,right: 12,left: 12),
                              child: SizedBox(
                                  height: 40,
                                  width: 50,

                                  child://Icon(Icons.card_giftcard,size: 45,color: Colors.white,),)
                                  Image.asset('images/icon_shoptab.png',color: Colors.white,)),
                            ),

                            Text(
                              'Shop',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
                SizedBox(
                  height: 20,

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Container(
                      width: 110,
                      height: 90,
                      child: RaisedButton(
                        elevation: 16,
                        splashColor: Color(0xff660066),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            side: BorderSide.none),
                        onPressed: () {

                          setState(() {
                            isPressed2=null;
                            isCardPressed=[false,false,true,false,false,false];
                             //Navigator.pushNamed(context, FoodCourt.id);
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => FoodCategory()));
                          });
                        },
                        color:isCardPressed[2]?Color(0xff660066):Colors.grey[800],
                        textColor: Colors.white,
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top:12.0,bottom: 8,right: 12,left: 12),
                              child: SizedBox(
                                  height: 40,
                                  width: 50,

                                  child://Icon(Icons.image,size: 45,color: Colors.white,),)
                                  Image.asset('images/icon_foodtab.png',color: Colors.white,)),
                            ),

                            Text(
                              'Food Court',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),

                    SizedBox(
                      width: 30,

                    ),
                    Container(
                      width: 110,
                      height: 90,
                      child: RaisedButton(
                        elevation: 16,
                        splashColor: Color(0xff660066),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            side: BorderSide.none),
                        onPressed: () {
                          setState(() {
                            isPressed2=null;
                            isCardPressed=[false,false,false,true,false,false];
                             Navigator.pushNamed(context, CinePlex.id);
                          });

                        },
                        color:isCardPressed[3]?Color(0xff660066):Colors.grey[800],
                        textColor: Colors.white,
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top:12.0,bottom: 8,right: 12,left: 12),
                              child: SizedBox(
                                  height: 40,
                                  width: 50,

                                  child://Icon(Icons.account_circle,size: 45,color: Colors.white,),)
                                  Image.asset('images/icon_cinepaxtab.png',color: Colors.white,)),
                            ),

                            Text(
                              'Cineplex',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),



                  ],
                ),
                SizedBox(
                  height: 20,

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Container(
                      width: 110,
                      height: 90,
                      child: RaisedButton(
                        elevation: 16,
                        splashColor: Color(0xFF660066),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            side: BorderSide.none),
                        onPressed: () {
                          setState(() {
                            isPressed2=null;
                            isCardPressed=[false,false,false,false,true,false];
                            Navigator.pushNamed(context, AmusementScreen.id);
                           // Navigator.of(context).push(MaterialPageRoute(builder: (context) => myorder(item: item,price: price,quantity: quantity,img: img,delivery: delivery,sum: sum)));
                          });

                        },
                        color:isCardPressed[4]?Color(0xff660066):Colors.grey[800],
                        textColor: Colors.white,
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top:12.0,bottom: 8,right: 12,left: 12),
                              child: SizedBox(
                                  height: 40,
                                  width: 50,

                                  child: //Icon(Icons.event_note,size: 45,color: Colors.white,),)
                                  Image.asset('images/icon_amusementpark.png',color: Colors.white,)),
                            ),

                            Text(
                              'Amusement\n      Park',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),

                    SizedBox(
                      width: 30,

                    ),
                    Container(
                      width: 110,
                      height: 90,
                      child: RaisedButton(
                        elevation: 16,
                        splashColor: Color(0xff660066),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            side: BorderSide.none),
                        onPressed: () {
                          setState(() {
                            isPressed2=null;
                            isCardPressed=[false,false,false,false,false,true];
                           // Navigator.of(context).push(MaterialPageRoute(builder: (context) => Cart(item: item,price: price,quantity: quantity,img: img,delivery: delivery,sum: sum)));
                          });
                        },
                        color:isPressed2??isCardPressed[5]?Color(0xff660066):Colors.grey[800],
                        textColor: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(top:2.0,bottom: 2,right: 2,left: 2),
                          child: SizedBox(
                              height: 55,
                              width: 100,

                              child://Icon(Icons.add_shopping_cart,size: 45,color: Colors.white,),)
                              Image.asset('images/logo_white.png',color: Colors.white,)),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 35,
                ),


                //////Bottom app bar/////////
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

            Image(
              height: 30,
              width: 40,
              image: AssetImage('images/logo_white.png'),
              color: Colors.white,
            ),
            // Text('Super Shop',
            //   style: TextStyle(
            //     color: Colors.white,
            //     fontSize: 20,
            //   ),
            // ),
            SizedBox(
              width: 120,
            ),

            IconButton(
              icon: Icon(Icons.account_circle,size: 35,color: Colors.white,),
              onPressed: () => null,
            ),
            SizedBox(
              width: 10,
            ),
            IconButton(
              icon: Icon(Icons.menu,size: 35,color: Colors.white,),
              onPressed: () {
                scaffoldKey.currentState.openEndDrawer();
              },
            ),


          ]),
        ),
      ),
    );
  }
}





