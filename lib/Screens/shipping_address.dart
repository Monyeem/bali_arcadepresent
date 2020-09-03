import 'package:bali_arcade/Screens/foodCourt.dart';
import 'package:bali_arcade/Screens/my_order.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:toast/toast.dart';



class shipaddress extends StatefulWidget {

  String item;
  int price;
  int quantity;
  String img;
  int delivery;
  int sum;

  shipaddress({this.item,this.price,this.quantity,this.img,this.delivery,this.sum});

  @override
  _shipaddressState createState() => _shipaddressState(item: item,price: price,quantity: quantity,img: img,delivery: delivery,sum: sum);
}

class _shipaddressState extends State<shipaddress> {

  String item;
  int price;
  int quantity;
  String img;
  int delivery;
  int sum;

  _shipaddressState({this.item,this.price,this.quantity,this.img,this.delivery,this.sum});

  bool _value = false;
  TextEditingController uName=TextEditingController();
  TextEditingController uEmail=TextEditingController();
  TextEditingController uphone=TextEditingController();
  TextEditingController uaddress=TextEditingController();

  bool _valideName=false;
  bool _valideEmail=false;
  bool _validephone=false;
  bool _valideaddress=false;

  int selectedradio;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedradio = 0;
  }

  setselectedradio(int val){
    setState(() {
      selectedradio = val;
    });
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(

            body: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin:Alignment.topCenter ,
                  end: Alignment.bottomCenter,
                  stops: [0.1,0.5],
                  colors: [Colors.black,Colors.grey],

                ),
              ),
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: SingleChildScrollView(

                  child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 14,left: 10),
                              child: IconButton(
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                ),
                                iconSize: 30,
                                onPressed: (){

                                  Navigator.pop(context);
                                },

                              ),
                            ),
                          ],
                        ),

                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top:25.0,left: 55,right: 55,bottom: 10),
                            child: Image.asset('',),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)
                          ),
                          color: Color(0xFF5e5e5e),
                          elevation: 8,
                          child: Container(
                            height: 390,
                            width: 300,
                            child: SingleChildScrollView(
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(top:16.0,left: 12,right: 12,bottom: 16),
                                    child: Text('Shipping Address',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w700),),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10,right: 10),
                                    child:Container(
                                      child:TextField(

                                        style: TextStyle(
                                            color: Colors.white
                                        ),
                                        controller: uName,

                                        cursorColor: Colors.white,
                                        keyboardType: TextInputType.text,
                                        decoration: InputDecoration(
                                          errorStyle: TextStyle(color: Colors.amber,fontSize: 8,),
                                          errorText: _valideName?'User name is Empty':null,
                                          suffixIcon: Image.asset('images/icon_username.png'),
                                          hintText: 'Name',
                                          hintStyle: TextStyle(color: Colors.white,fontSize: 16),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white,
                                                width: 1
                                            ),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white,
                                                width: 2
                                            ),

                                          ),

                                        ),

                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(left: 10,right: 10),
                                    child:Container(
                                      child:TextFormField(

                                        style: TextStyle(
                                            color: Colors.white
                                        ),

                                        //obscureText: true,
                                        controller: uphone,
                                        cursorColor: Colors.white,
                                        keyboardType: TextInputType.number,

                                        decoration: InputDecoration(
                                          errorStyle: TextStyle(color: Colors.amber,fontSize: 8,),
                                          errorText: _validephone?'Phone Can\'t Be Empty':null,
                                          suffixIcon: Icon(FontAwesomeIcons.phone, color: Colors.white,),
                                          hintText: 'Phone Number',
                                          hintStyle: TextStyle(color: Colors.white,fontSize: 16),
                                          enabledBorder: UnderlineInputBorder(

                                            borderSide: BorderSide(
                                                color: Colors.white,
                                                width: 1
                                            ),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white,
                                                width: 2
                                            ),

                                          ),

                                        ),


                                      ),
                                    ),


                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10,right: 10),
                                    child:
                                    Container(
                                      child:TextFormField(
                                        style: TextStyle(
                                            color: Colors.white
                                        ),
                                        //obscureText: true,
                                        controller: uaddress,
                                        cursorColor: Colors.white,
                                        keyboardType: TextInputType.text,
                                        decoration: InputDecoration(
                                          errorStyle: TextStyle(color: Colors.amber,fontSize: 8,),
                                          errorText: _valideaddress?'Address is Empty':null,
                                          suffixIcon: Icon(FontAwesomeIcons.home, color: Colors.white,),
                                          hintText: 'Address',
                                          hintStyle: TextStyle(color: Colors.white,fontSize: 16),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white,
                                                width: 1
                                            ),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white,
                                                width: 2
                                            ),

                                          ),

                                        ),


                                      ),
                                    ),
                                  ),

                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Radio(
                                            value: 1,
                                            groupValue: selectedradio,
                                            activeColor: Colors.white,
                                            onChanged: (val){
                                              print('Radio$val');
                                              setselectedradio(val);
                                            },
                                          ),

                                          Text("Cash On Delivery",
                                            style: TextStyle(
                                                fontSize: 15,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Radio(
                                            value: 2,
                                            groupValue: selectedradio,
                                            activeColor: Colors.white,
                                            onChanged: (val){
                                              print('Radio$val');
                                              setselectedradio(val);
                                            },
                                          ),

                                          Text("Pay by bkash",
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),

                                    ],
                                  ),

                                  SizedBox(
                                    height: 20,
                                  ),

                                  Container(
                                    height: 40,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20)

                                    ),
                                    child: RaisedButton(
                                      onPressed: () async{
                                        setState(() {
                                        //  signUpMethod();
                                        //   Navigator.of(context).push(MaterialPageRoute(builder: (context) => myorder(item: item,price: price,quantity: quantity,img: img,delivery: delivery,sum: sum,)));
                                          Toast.show("Your Order is Confirmed", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.CENTER);

                                        });
                                      },
                                      elevation: 16,
                                      child: Text('Place Order',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                                      color: Color(0xff660066),
                                      textColor: Colors.white,
                                    ),
                                  ),






                                ],
                              ),
                            ),
                          ),
                        ),
                      ]
                  ),
                ),
              ),
            )));
  }
}
