import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/framework.dart';



class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
              gradient: LinearGradient(
              begin:Alignment.topCenter ,              
              end: Alignment.bottomCenter,
              stops: [0.1,0.9],
              colors: [Colors.grey[700],Colors.white],
            ),
          ),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  SizedBox(
                    height: 60,
                    width: 250,
                  ),
                  IconButton(
                    onPressed: ()
                    {
                      Navigator.pop(context);
                    },
                   icon: Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 40,
                    
                    

                      ),
                  ),
                ],
              ),
                
                Row(
                  children: <Widget>[
                      Icon(
                  Icons.account_circle,
                  color: Colors.white,
                  size: 110,
                  

                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 15,
                    ),
                      Text(
                        'Lorem Ipsum',
                        style: TextStyle(color: Color(0xff660066),fontWeight: FontWeight.w500,fontSize: 16),
                      )
                  ],
                )
              


            ],
          ),

                  ),
                  Container(
                    width: double.infinity,
                    height: 472,
                    color: Colors.black,
                    child: Align(
                                 
                         alignment: Alignment.topLeft,       
                        child: Column(
                        children: <Widget>[
                          ListTile(
                            trailing: Icon(Icons.account_box,color: Colors.white,size: 30,),
                            title: Padding(
                              padding: const EdgeInsets.only(left: 160),
                              child: Text(
                                'Profile',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18
                                ),
                              ),
                            ),
                            
                          ),
                           ListTile(
                            trailing: Icon(Icons.perm_device_information,color: Colors.white,size: 30,),
                            title: Padding(
                              padding: const EdgeInsets.only(left: 110),
                              child: Text(
                                'Personal Info',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18
                                ),
                              ),
                            ),
                            
                          ),
                           ListTile(
                            trailing: Icon(Icons.card_membership,color: Colors.white,size: 30,),
                            title: Padding(
                              padding: const EdgeInsets.only(left: 115),
                              child: Text(
                                'Membership',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18
                                ),
                              ),
                            ),
                            
                          ),
                           ListTile(
                            trailing: Icon(Icons.payment,color: Colors.white,size: 30,),
                            title: Padding(
                              padding: const EdgeInsets.only(left: 72),
                              child: Text(
                                'Payments History',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18
                                ),
                              ),
                            ),
                            
                          ),
                           ListTile(
                            trailing: Icon(Icons.account_balance_wallet,color: Colors.white,size: 30,),
                            title: Padding(
                              padding: const EdgeInsets.only(left: 165),
                              child: Text(
                                'Wallet',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18
                                ),
                              ),
                            ),
                            
                          ),
                           ListTile(
                            trailing: Image.asset('images/icon_coins.png',color: Colors.white,),
                            title: Padding(
                              padding: const EdgeInsets.only(left: 160),
                              child: Text(
                                'Points',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18
                                ),
                              ),
                            ),
                            
                          ),
                            ListTile(
                            trailing: Image.asset('images/icon_logout.png',color: Colors.white,),
                            title: Padding(
                              padding: const EdgeInsets.only(left: 160),
                              child: Text(
                                'Logout',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18
                                ),
                              ),
                            ),
                            
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
    );
  }
}