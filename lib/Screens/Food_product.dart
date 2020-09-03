import 'package:bali_arcade/Screens/cart.dart';
import 'package:bali_arcade/Screens/product_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

int quantity=0;
String item;
int price=0;
String img;
int delivery=0;
int sum;

class FoodProduct extends StatefulWidget {
  FoodProduct({Key key}) : super(key: key);
  static String id="FoodProduct";
  @override
  _FoodProductState createState() => _FoodProductState();
}

class _FoodProductState extends State<FoodProduct> {

//  List<product_name> product = [
//    product_name('Biryani No 1', 40, 1,'images/biryani.jpg'),
//    product_name('Biryani No 2', 30, 30,'images/biryani2.jpg'),
//    product_name('Biryani No 3', 20, 20,'images/biryani3.jpg'),
//  ];

  String value;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[800],
          title: Text('Products',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w700),),
          actions: [
            IconButton(
              icon: Icon(Icons.search,size: 35,color: Colors.white,),
              onPressed: () => null,
            ),
            SizedBox(
              width: 10,
            ),
            IconButton(
              icon: Icon(Icons.add_shopping_cart,size: 35,color: Colors.white,),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Cart(item: item,price: price,quantity: quantity,img: img,delivery: delivery,sum: sum)));
              },
            ),
          ],
        ),
        backgroundColor: Colors.black,
        body:SafeArea(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin:Alignment.topCenter ,
                end: Alignment.bottomCenter,
                stops: [0.0001,0.2],
                colors: [Colors.grey[800],Colors.white24],

              ),
            ),
            child: ListView(
              children: [


                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Container(
                    height: 150,
                    decoration:BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 10,),
                        Container(
                          width: 110,
                          height: 130,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                  image:  AssetImage(img = 'images/burger.jpg'),
                                  fit: BoxFit.fill
                              )
                          ),

                        ),
                        Container(
                          width: 150,
                          height: 140,

                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 5,),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(item = 'Burger',
                                      style: TextStyle(
                                          color: Colors.white,fontSize: 14,
                                          fontWeight: FontWeight.w900),
                                    )
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text('Naga',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w600),)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8,top: 8),
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text('TK : 600 minimum',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8,top: 8),
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text('Bali Arcade Mall',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),)),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
                        GestureDetector(
                          onTap: (){
                            openSheet();
                            quantity=0;
                            item='Burger';
                            price=00;
                            img= 'images/burger.jpg';
                            delivery= 00;
                            //sum = price + delivery;
                          },
                          child: Container(
                            height: 150,
                            width: 30,
                            decoration:BoxDecoration(
                                color: Color(0xff660066),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 30,),
                                Text('O',style: TextStyle(color: Colors.white),),
                                SizedBox(height: 2,),
                                Text('R',style: TextStyle(color: Colors.white),),
                                SizedBox(height: 2,),
                                Text('D',style: TextStyle(color: Colors.white),),
                                SizedBox(height: 2,),
                                Text('E',style: TextStyle(color: Colors.white),),
                                SizedBox(height: 2,),
                                Text('R',style: TextStyle(color: Colors.white),),
                                SizedBox(height: 2,),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Container(
                    height: 150,
                    decoration:BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 10,),
                        Container(
                          width: 110,
                          height: 130,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                  image:  AssetImage(img = 'images/dosai.jpg'),
                                  fit: BoxFit.fill
                              )
                          ),

                        ),
                        Container(
                          width: 150,
                          height: 140,

                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 5,),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(item = 'Dosai',
                                      style: TextStyle(
                                          color: Colors.white,fontSize: 14,
                                          fontWeight: FontWeight.w900),
                                    )
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text('Spicy',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w600),)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8,top: 8),
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text('TK : 400 minimum',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8,top: 8),
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text('Bali Arcade Mall',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),)),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
                        GestureDetector(
                          onTap: (){
                            openSheet();
                            quantity=0;
                            item='Spicy';
                            price=00;
                            img= 'images/dosai.jpg';
                            delivery= 00;
                            //sum = price + delivery;
                          },
                          child: Container(
                            height: 150,
                            width: 30,
                            decoration:BoxDecoration(
                                color: Color(0xff660066),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 30,),
                                Text('O',style: TextStyle(color: Colors.white),),
                                SizedBox(height: 2,),
                                Text('R',style: TextStyle(color: Colors.white),),
                                SizedBox(height: 2,),
                                Text('D',style: TextStyle(color: Colors.white),),
                                SizedBox(height: 2,),
                                Text('E',style: TextStyle(color: Colors.white),),
                                SizedBox(height: 2,),
                                Text('R',style: TextStyle(color: Colors.white),),
                                SizedBox(height: 2,),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Container(
                    height: 150,
                    decoration:BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 10,),
                        Container(
                          width: 110,
                          height: 130,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                  image:  AssetImage(img = 'images/pizza.jpg'),
                                  fit: BoxFit.fill
                              )
                          ),

                        ),
                        Container(
                          width: 150,
                          height: 140,

                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 5,),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(item = 'Big Size Pizza',
                                      style: TextStyle(
                                          color: Colors.white,fontSize: 14,
                                          fontWeight: FontWeight.w900),
                                    )
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text('Chicken',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w600),)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8,top: 8),
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text('TK : 1000 minimum',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8,top: 8),
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text('Bali Arcade Mall',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),)),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
                        GestureDetector(
                          onTap: (){
                            openSheet();
                            quantity=0;
                            item='Big Size Pizza';
                            price=00;
                            img= 'images/pizza.jpg';
                            delivery= 00;
                            //sum = price + delivery;
                          },
                          child: Container(
                            height: 150,
                            width: 30,
                            decoration:BoxDecoration(
                                color: Color(0xff660066),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 30,),
                                Text('O',style: TextStyle(color: Colors.white),),
                                SizedBox(height: 2,),
                                Text('R',style: TextStyle(color: Colors.white),),
                                SizedBox(height: 2,),
                                Text('D',style: TextStyle(color: Colors.white),),
                                SizedBox(height: 2,),
                                Text('E',style: TextStyle(color: Colors.white),),
                                SizedBox(height: 2,),
                                Text('R',style: TextStyle(color: Colors.white),),
                                SizedBox(height: 2,),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Container(
                    height: 150,
                    decoration:BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 10,),
                        Container(
                          width: 110,
                          height: 130,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                  image:  AssetImage(img = 'images/pasta.jpg'),
                                  fit: BoxFit.fill
                              )
                          ),

                        ),
                        Container(
                          width: 150,
                          height: 140,

                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 5,),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(item = 'Pasta',
                                      style: TextStyle(
                                          color: Colors.white,fontSize: 14,
                                          fontWeight: FontWeight.w900),
                                    )
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text('Cajun Chicken Pasta ',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w600),)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8,top: 8),
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text('TK : 400 minimum',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8,top: 8),
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text('Bali Arcade Mall',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),)),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
                        GestureDetector(
                          onTap: (){
                            openSheet();
                            quantity=0;
                            item='Pasta';
                            price=00;
                            img= 'images/pasta.jpg';
                            delivery= 00;
                            //sum = price + delivery;
                          },
                          child: Container(
                            height: 150,
                            width: 30,
                            decoration:BoxDecoration(
                                color: Color(0xff660066),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 30,),
                                Text('O',style: TextStyle(color: Colors.white),),
                                SizedBox(height: 2,),
                                Text('R',style: TextStyle(color: Colors.white),),
                                SizedBox(height: 2,),
                                Text('D',style: TextStyle(color: Colors.white),),
                                SizedBox(height: 2,),
                                Text('E',style: TextStyle(color: Colors.white),),
                                SizedBox(height: 2,),
                                Text('R',style: TextStyle(color: Colors.white),),
                                SizedBox(height: 2,),
                              ],
                            ),
                          ),
                        )
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

  void openSheet() {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        backgroundColor: Colors.grey,
        context: context,
        builder: (BuildContext context)
        {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState){
                return Container(
                  height: 180,
                  child: Column(
                    children: [
                      SizedBox(height: 5,),
                      Text("Quantity",style: TextStyle(wordSpacing: 3.3,fontSize: 25,fontWeight: FontWeight.w900,color: Colors.white)),
                      SizedBox(height: 8,),
                      Text("You Selected Product : $item ",style: TextStyle(wordSpacing: 3.3,fontSize: 16,fontWeight: FontWeight.w900,color: Colors.white)),

                      SizedBox(height: 15,),
                      Row(
                        children: [
                          SizedBox(width: 60,),
                          RawMaterialButton(
                            child: Icon(FontAwesomeIcons.minus,color: Colors.white),
                            onPressed:(){
                              setState(() {
                                quantity--;
                                if(quantity<0)
                                {
                                  quantity=0;
                                }
                              });
                            },
                            shape: CircleBorder(),
                            elevation: 8,
                            disabledElevation: 8,
                            fillColor: Colors.grey[800],
                            constraints: BoxConstraints.tightFor(
                              height: 40,
                              width: 40,
                            ),
                          ),
                          SizedBox(width: 50,),

                          Text(
                            quantity.toString(),
                            style:TextStyle(
                                color: Colors.white,
                                fontSize: 50,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w900
                            ),
                          ),

                          SizedBox(width: 60,),
                          RawMaterialButton(
                            child: Icon(FontAwesomeIcons.plus,color: Colors.white),
                            onPressed:(){
                              setState(() {
                                quantity++;
                              });
                            },
                            shape: CircleBorder(
                            ),
                            elevation: 8,
                            disabledElevation: 8,
                            fillColor: Colors.grey[800],
                            constraints: BoxConstraints.tightFor(
                              height: 40,
                              width: 40,
                            ),
                          ),
                        ],
                      ),

                      Flexible(
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Cart(item: item,price: price,quantity: quantity,img: img,delivery: delivery,sum: sum,)));
                          },
                          color: Colors.grey[800],
                          child: Container(
                            width: double.infinity,
                            height: 50,
                            child: Center(
                                child: Text('PROCEED',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800),
                                )
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              }
          );
        }
    );
  }
}
