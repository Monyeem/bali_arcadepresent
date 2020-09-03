import 'package:flutter/material.dart';
import 'signup_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:bali_arcade/Screens/dashboard.dart';
import 'package:toast/toast.dart';
import 'dart:async';
class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

   static String id = 'loginPage';
  
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin{
  bool _value = false;
   TextEditingController uNameLog=TextEditingController();
   TextEditingController uPasswordLog=TextEditingController();
    bool _valideNameLog=false;
     bool _validePassLog=false;

     Animation animatation;
 AnimationController animationController;
 

 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
    animationController=AnimationController(duration: Duration(seconds: 3),vsync:this);
    animatation=Tween(begin: 2.0,end: 0.0).animate(CurvedAnimation(parent: animationController,curve: Curves.fastLinearToSlowEaseIn));
    animationController.forward();
   
  }
  @override
  Widget build(BuildContext context) {
     
   
          return MaterialApp(
        home: Scaffold(
          resizeToAvoidBottomInset: false,
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
                child: Column(
                  children: <Widget>[
                     Center(
              child: Padding(
              padding: const EdgeInsets.all(58.0),
              child: Image.asset('images/logo_white.png'),
            ),
                    ),
                   Card(
                   shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(12)
                   ),
                   color: Color(0xFF5e5e5e),
                   elevation: 8,
                   child: Container(
           height: 300,
           width: 300,
           child: Column(
           children: <Widget>[
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text('LOG IN',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w700),),
             ),
              Padding(
            padding: EdgeInsets.only(left: 10,right: 10),
               child: Container(
                   child:TextField(
                     
           style: TextStyle(
             color: Colors.white
           ),
            controller: uNameLog,                                
            cursorColor: Colors.white,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(  
               errorStyle: TextStyle(color: Colors.amber,fontSize: 8,), 
              errorText: _valideNameLog?'User name is Empty':null,
           suffixIcon: Image.asset('images/icon_username.png'),
           hintText: 'User name',                                  
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
               child: Container(
                   child:TextField(  
                      style: TextStyle(
             color: Colors.white
           ),
            obscureText: true,   
            controller: uPasswordLog,
            cursorColor: Colors.white,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
               errorStyle: TextStyle(color: Colors.amber,fontSize: 8,),   
             errorText: _validePassLog?'Password is Empty':null,
           suffixIcon: Image.asset('images/icon_password.png'),
           hintText: 'Password',                                 
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
              Row(
            children: <Widget>[
                  Theme(
           data: Theme.of(context).copyWith(
             unselectedWidgetColor: Colors.white,
          ),
                     child: Checkbox(
              checkColor: Colors.black,
           activeColor: Colors.white,      
              focusColor: Colors.black,
           value: _value,
            onChanged: (bool value) {
           setState(() {
                 _value = value;
              });
             },
                  ),
               ),

                  Text(
                      'Remember me',
                      style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),
                  ),
                  SizedBox(
                      width: 10,
                  ),
                  Text(
                      'Forgot Password?',
                      style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),
                  ),

            ],
              ),
              SizedBox(
            height: 10,
              ),
              Container(
            height: 40,
            width: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20)

            ),
              child: RaisedButton(
              onPressed: () async{
                 setState(() {
                      loginMethod();
                 });
                
              },
              elevation: 16,
              child: Text('LOG IN',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
              color: Color(0xff660066),
              textColor: Colors.white,
            ),
              ),
              SizedBox(
            height: 20,
              ),
              Flexible(
                child: FlatButton(
                  onPressed: (){
                  
                 Navigator.pushNamed(context, SignUpPage.id);
              },
            child: Text(
                      'Dont have an account? SIGN UP',
                     style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.white),
                      ),
            ),
        ),                                           
],
                  ),
      ),
   ),
               SizedBox(
                     height: 10,
              ),
                    Card(
                   shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(12)
                 ),
                   color: Color(0xFF5e5e5e),
                     elevation: 8,
          child: Container(
                   height: 120,
                     width:300 ,
             child: Column(
                   children: <Widget>[
                   Text('__________Social Login__________',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),),
             SizedBox(
            height: 10,
                   ),
               Row(
                 children: <Widget>[
           SizedBox(
           height: 50,
                 width: 70,
               ),
                 Image.asset('images/icon_twitter.png'),
                   SizedBox(
               width: 20,
             ),
                  Image.asset('images/icon_facebook.png'), 
          SizedBox(
              width: 20,
                 ),
                  Image.asset('images/icon_google.png'),
            ],
                     ),
                    ],
             ),
          ),
                    )
         ],
         ),
      ),
      ),
  ),
  );
      
  }
 
 
 
   void loginMethod() async {

  String uNames=uNameLog.text;
  String uPasswords=uPasswordLog.text; 


    
   
        if(uNames.isEmpty)
        { 
           _valideNameLog=true;
          
        }
         if(uPasswords.isEmpty)
        { 
           _validePassLog=true;
          
        }
        
    SharedPreferences getValue=await SharedPreferences.getInstance();
    String name=getValue.getString('uName');
    String password=getValue.getString('uPassword');

    if(uNames.contains(name) && uPasswords.contains(password))
    {
        Navigator.pushNamed(context, DashBoard.id);
         uNameLog.clear();
        uPasswordLog.clear();
        _valideNameLog=false;
        _validePassLog=false;
    }
    else{
      if(uNames.isNotEmpty && uPasswords.isEmpty)
        {
          _validePassLog=true;
        }
        else if(uNames.isEmpty && uPasswords.isNotEmpty)
        {
          _valideNameLog=true;
        }
    Toast.show("Please fill up userName and Password", context, duration: 2, gravity:  Toast.BOTTOM);

    }

   }
}

