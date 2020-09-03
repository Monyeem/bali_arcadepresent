import 'package:flutter/material.dart';


class OrderNow extends StatefulWidget {
  OrderNow({Key key}) : super(key: key);
 static String id='orderNow';
  @override
  _OrderNowState createState() => _OrderNowState();
}

class _OrderNowState extends State<OrderNow> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      backgroundColor: Colors.black,
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
              onPressed: () => null,
            ),
      ],
      ),
        body: SafeArea(
          top: false,
          child: Container(
            width: double.infinity,
            color: Colors.white,
            child: Column(
              children: [
                  SizedBox(
                    height: 2,
                  ),
                  Container(
                    height: 520,
                    color: Colors.white,
                    child: ListView(
                  children: [
                        
             
                        Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(                   
                elevation: 16,
                child: Container(
                  height: 340,
                  width: 200,
                  decoration: BoxDecoration(
               borderRadius: BorderRadius.all(Radius.circular(20)),
                 
                       ),
                  child: Column(
                  children: [
                    SizedBox(
                      height: 2,
                    ),
                      Container( 
               width: 250,
               height: 130,
              decoration: BoxDecoration(
               borderRadius: BorderRadius.all(Radius.circular(5)),
                    image: DecorationImage(
                  image:  AssetImage('images/biryani.jpg'),
              fit: BoxFit.fill                                 
            )
                   ),
         
                     ),
                   SizedBox(
             height: 8,
             
                   ),

                     Row(
                   children: [
             SizedBox(
             width: 10,
             
                   ),
             Text('Biryani-1-No',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),
              SizedBox(
             width: 115,
             
                   ),
            Text('Rs:142.50',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),),
                   ],
                     ),
                     SizedBox(
             height: 5,
             
                   ),

                     Row(
                   children: [
             SizedBox(
             width: 10,
             
                   ),
             Text('Total:0.00',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),),
              SizedBox(
             width: 155,
             
                   ),
            Text('Quantity:0',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),),
                   ],
                     ),
                  SizedBox(
             height: 5,
             
                   ),

                     Row(
                   children: [
             SizedBox(
             width: 10,
             
                   ),
             Text('Description :',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),),
              SizedBox(
             width: 170,
             
                   ),
             IconButton(
               
               onPressed: () {

               },
               icon: Icon(Icons.add_circle,size: 35,color: Colors.black,)),
                   ],
                     ),
                 

                    Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Biryani is a celebration of all that is great about Indian food – the heady aromas, the vibrant colours, the fluffy rice and those addictive curry flavours. Make this Chicken Biryani with your protein of choice – or try a vegetable biryani!'),
                    ),
              


                  ],
                    ),
                ),
              ),
                        ),








                        Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(                   
                elevation: 16,
                child: Container(
                   height: 340,
                  width: 200,
                  decoration: BoxDecoration(
               borderRadius: BorderRadius.all(Radius.circular(20)),
                 
                       ),
                  child: Column(
                  children: [
                    SizedBox(
                      height: 2,
                    ),
                      Container( 
               width: 250,
               height: 130,
              decoration: BoxDecoration(
               borderRadius: BorderRadius.all(Radius.circular(5)),
                    image: DecorationImage(
                  image:  AssetImage('images/burger.jpg'),
              fit: BoxFit.fill                                 
            )
                   ),
         
                     ),
                   SizedBox(
             height: 8,
             
                   ),

                     Row(
                   children: [
             SizedBox(
             width: 10,
             
                   ),
             Text('Burger-1-No',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),
              SizedBox(
             width: 115,
             
                   ),
            Text('Rs:110.50',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),),
                   ],
                     ),
                     SizedBox(
             height: 5,
             
                   ),

                     Row(
                   children: [
             SizedBox(
             width: 10,
             
                   ),
             Text('Total:0.00',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),),
              SizedBox(
             width: 155,
             
                   ),
            Text('Quantity:0',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),),
                   ],
                     ),
                  SizedBox(
             height: 5,
             
                   ),

                     Row(
                   children: [
             SizedBox(
             width: 10,
             
                   ),
             Text('Description :',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),),
              SizedBox(
             width: 170,
             
                   ),
             IconButton(
               
               onPressed: () {

               },
               icon: Icon(Icons.add_circle,size: 35,color: Colors.black,)),
                   ],
                     ),
                 

                    Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Burger is a celebration of all that is great about Indian food – the heady aromas, the vibrant colours, the fluffy rice and those addictive curry flavours. Make this Chicken Biryani with your protein of choice – or try a vegetable burger!'),
                    ),
              


                  ],
                    ),
                ),
              ),
                        )






                 

                 
                  ],
                ),
                  ),
                  RaisedButton(
                    onPressed: () {},
                    color: Colors.grey[800],
                    child: Container(
                      width: double.infinity,
                      height: 70,
                      child: Center(child: Text('PROCEED',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w800),)),
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














