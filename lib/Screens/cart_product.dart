import 'package:bali_arcade/Screens/foodCourt.dart';
import 'package:bali_arcade/Screens/product_model.dart';
import 'package:flutter/material.dart';

class cart_product extends StatefulWidget {

  String item;
  String price;
  int quantity;
  String img;

  cart_product({this.item,this.price,this.quantity,this.img});

  @override
  _cart_productState createState() => _cart_productState();
}

class _cart_productState extends State<cart_product> {

  String item;
  String price;
  int quantity;
  String img;

  _cart_productState({this.item,this.price,this.quantity,this.img});


  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      //itemCount: product.length,
      itemBuilder: (context, index){
        return new single_cart_product(
        );
      },

    );
  }
}

class single_cart_product extends StatelessWidget {

  String name;
  int price;
  int quantity;
//  String img;

  single_cart_product({this.name,this.price,this.quantity});

  @override
  Widget build(BuildContext context) {
    return Card(
      child:
      SafeArea(
        child: ListTile(
          title: Container(
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
                  child: SingleChildScrollView(
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
                                borderRadius: BorderRadius.all(Radius.circular(20)),
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
                                              borderRadius: BorderRadius.all(Radius.circular(5)),
                                              image: DecorationImage(
                                                  image:  AssetImage(img),
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
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(item ,style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.w900),),
                                            SizedBox(height: 10,),
                                            Text('price: $price',style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.w300),),
                                            SizedBox(height: 10,),
                                            Text('Total: $price',style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.w700),),
                                          ],
                                        ),
                                      ),
                                      Expanded (
                                        flex: 0,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 95,),
                                            Text('Quantity: $quantity',style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.w700),),
                                            SizedBox(height: 10,),
                                            Container(
                                              color: Colors.grey[800],
                                              height: 30,
                                              width: 86,
                                              child: Center(child: Text('Edit',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w700),)),
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

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            elevation: 12,
                            child: Container(
                              height: 150,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
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
                                              borderRadius: BorderRadius.all(Radius.circular(5)),
                                              image: DecorationImage(
                                                  image:  AssetImage(img),
                                                  fit: BoxFit.fill
                                              )
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                      Expanded(
                                        flex: 1,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(item,style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.w900),),
                                            SizedBox(height: 10,),
                                            Text('price: $price',style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.w300),),
                                            SizedBox(height: 10,),
                                            Text('Total: $price',style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.w700),),
                                          ],
                                        ),
                                      ),
                                      Expanded (
                                        flex: 0,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 95,),
                                            Text('Quantity: $quantity',style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.w700),),
                                            SizedBox(height: 10,),
                                            Container(
                                              color: Colors.grey[800],
                                              height: 30,
                                              width: 86,
                                              child: Center(child: Text('Edit',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w700),)),
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


                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            elevation: 12,
                            child: Container(
                              height: 150,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
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
                                              borderRadius: BorderRadius.all(Radius.circular(5)),
                                              image: DecorationImage(
                                                  image:  AssetImage(img),
                                                  fit: BoxFit.fill
                                              )
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                      Expanded(
                                        flex: 1,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(item,style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.w900),),
                                            SizedBox(height: 10,),
                                            Text('price: $price',style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.w300),),
                                            SizedBox(height: 10,),
                                            Text('Total: $price',style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.w700),),
                                          ],
                                        ),
                                      ),
                                      Expanded (
                                        flex: 0,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 95,),
                                            Text('Quantity: $quantity',style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.w700),),
                                            SizedBox(height: 10,),
                                            Container(
                                              color: Colors.grey[800],
                                              height: 30,
                                              width: 86,
                                              child: Center(child: Text('Edit',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w700),)),
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
                            Text('255.00',style: TextStyle(fontSize: 16,color: Colors.white),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Text('Tax Amount:',style: TextStyle(fontSize: 16,color: Colors.white),),
                            SizedBox(width:18,),
                            Text('14.25',style: TextStyle(fontSize: 16,color: Colors.white),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Text('Shipping Cost:',style: TextStyle(fontSize: 16,color: Colors.white),),
                            SizedBox(width:8,),
                            Text('25.00',style: TextStyle(fontSize: 16,color: Colors.white),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Text('Grand Amount:',style: TextStyle(fontSize: 16,color: Colors.white),),
                            SizedBox(width:5,),
                            Text('294.25',style: TextStyle(fontSize: 16,color: Colors.white),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                RaisedButton(
                  onPressed: () {},
                  color: Colors.grey[800],
                  child: Container(
                    width: double.infinity,
                    height: 70,
                    child: Center(child: Text('Place Order',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w800),)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

