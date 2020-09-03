import 'package:bali_arcade/Screens/foodCourt.dart';
import 'package:flutter/material.dart';
import 'package:bali_arcade/Screens/cart.dart';

class myorder extends StatefulWidget {

  String item;
  int price;
  int quantity;
  String img;
  int delivery;
  int sum;



  myorder({this.item,this.price,this.quantity,this.img,this.delivery,this.sum});

  @override
  _myorderState createState() => _myorderState(item: item,price: price,quantity: quantity,img: img,delivery: delivery,sum: sum);
}

class _myorderState extends State<myorder> {

  String item;
  int price;
  int quantity;
  String img;
  int delivery;
  int sum;

  _myorderState({this.item,this.price,this.quantity,this.img,this.delivery,this.sum});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.grey[800],
          title: Text('My Order',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w700),),

        ),

        body: SafeArea(
          child: Container(
            width: double.infinity,
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(
                  height: 2,
                ),
                Container(
                  height: 400,
                  color: Colors.white,
                  child: ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context,index) {
                        return Card(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Card(
                                  elevation: 12,
                                  child: Container(
                                    height: 150,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20)),
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: Container(
                                                width: 100,
                                                height: 150,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius
                                                        .all(
                                                        Radius.circular(5)),
                                                    image: DecorationImage(
                                                        image: AssetImage(img),
                                                        fit: BoxFit.fill
                                                    )
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment
                                                    .start,
                                                children: [
                                                  Text(item, style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.black,
                                                      fontWeight: FontWeight
                                                          .w900),),
                                                  SizedBox(height: 10,),
                                                  Text('Price: $price',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight
                                                            .w300),),
                                                  SizedBox(height: 10,),
                                                  Text('Total: $sum',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight
                                                            .w700),),
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              flex: 0,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment
                                                    .start,
                                                children: [
                                                  SizedBox(height: 95,),
                                                  Text('Quantity: $quantity',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight
                                                            .w700),),
                                                  SizedBox(height: 10,),
                                                  Container(
                                                    //color: Colors.grey[800],
                                                    height: 30,
                                                    width: 86,
                                                    child: Center(child: Text(
                                                      '', style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.white,
                                                        fontWeight: FontWeight
                                                            .w700),)),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        );
                      }
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 120,
                  color: Colors.grey,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('Total Amount:',style: TextStyle(fontSize: 16,color: Colors.white),),
                            SizedBox(width:5,),
                            Text('$price',style: TextStyle(fontSize: 16,color: Colors.white),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Text('Tax Amount:',style: TextStyle(fontSize: 16,color: Colors.white),),
                            SizedBox(width:18,),
                            Text('00',style: TextStyle(fontSize: 16,color: Colors.white),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Text('Shipping Cost:',style: TextStyle(fontSize: 16,color: Colors.white),),
                            SizedBox(width:8,),
                            Text('$delivery',style: TextStyle(fontSize: 16,color: Colors.white),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Text('Grand Amount:',style: TextStyle(fontSize: 16,color: Colors.white),),
                            SizedBox(width:5,),
                            Text('$sum',style: TextStyle(fontSize: 16,color: Colors.white),),
                          ],
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
