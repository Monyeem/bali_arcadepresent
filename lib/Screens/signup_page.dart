import 'package:bali_arcade/Screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toast/toast.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key key}) : super(key: key);
  static String id = 'signUpPage';
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _value = false;
  TextEditingController uName=TextEditingController();
  TextEditingController uEmail=TextEditingController();
  TextEditingController uPassword=TextEditingController();
  TextEditingController uConPassword=TextEditingController();

  bool _valideName=false;
  bool _valideEmail=false;
  bool _validePass=false;
  bool _valideConPass=false;




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
                            child: Image.asset('images/logo_white.png',),
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
                                    child: Text('SIGN UP',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w700),),
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
                                    padding: EdgeInsets.only(left: 10,right: 5),
                                    child:Container(
                                      child:TextFormField(
                                        style: TextStyle(
                                            color: Colors.white
                                        ),

                                        controller: uEmail,
                                        cursorColor: Colors.white,
                                        keyboardType: TextInputType.text,
                                        decoration: InputDecoration(
                                          errorStyle: TextStyle(color: Colors.amber,fontSize: 8,),
                                          errorText: _valideEmail?'Email is Empty':null,
                                          suffixIcon: Image.asset('images/icon_email.png'),
                                          hintText: 'Email',
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

                                        obscureText: true,
                                        controller: uPassword,
                                        cursorColor: Colors.white,
                                        keyboardType: TextInputType.text,

                                        decoration: InputDecoration(

                                          errorStyle: TextStyle(color: Colors.amber,fontSize: 8,),
                                          errorText: _validePass?'Password Can\'t Be Empty':null,
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
                                  Padding(
                                    padding: EdgeInsets.only(left: 10,right: 10),
                                    child:
                                    Container(
                                      child:TextFormField(
                                        style: TextStyle(
                                            color: Colors.white
                                        ),
                                        obscureText: true,
                                        controller: uConPassword,
                                        cursorColor: Colors.white,
                                        keyboardType: TextInputType.text,
                                        decoration: InputDecoration(
                                          errorStyle: TextStyle(color: Colors.amber,fontSize: 8,),
                                          errorText: _valideConPass?'Confirm Password is Empty':null,
                                          suffixIcon: Image.asset('images/icon_lock.png',color: Colors.white,),
                                          hintText: 'Confirm Password',
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
                                        'I agree to terms and privacy policy',
                                        style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.white),
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
                                          signUpMethod();
                                        });
                                      },
                                      elevation: 16,
                                      child: Text('SIGN UP',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
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

  void signUpMethod() async {




    String uNames=uName.text;
    String uEmails=uEmail.text;
    String uPasswords=uPassword.text;
    String uConPasswords=uConPassword.text;
    Pattern pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);





    if(uNames.isEmpty)
    {
      _valideName=true;

    }
    if(uEmails.isEmpty)
    {
      _valideEmail=true;

    }

    if(uPasswords.isEmpty)
    {
      _validePass=true;

    }
    if(uConPasswords.isEmpty)
    {
      _valideConPass=true;

    }

    if(uNames.isNotEmpty && uEmails.isNotEmpty && regex.hasMatch(uEmails)&& uPasswords.length>3 && uPasswords.isNotEmpty && uConPasswords.contains(uPasswords))
    {
      SharedPreferences savedValue= await SharedPreferences.getInstance();
      savedValue.setString('uName',uNames);
      savedValue.setString('uEmail',uEmails);
      savedValue.setString('uPassword',uPasswords);
      savedValue.setString('uConPass',uConPasswords);
      Toast.show("Successfully saved the information", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.CENTER);
      Navigator.pushNamed(context, LoginPage.id);

      uName.clear();
      uEmail.clear();
      uPassword.clear();
      uConPassword.clear();


    }
    else{

      if(uPasswords.length<3)
      {
        Toast.show("Password must be atleast 4 character", context, duration:2, gravity:  Toast.CENTER);
      }
      if(!uConPasswords.contains(uPasswords))
      {
        Toast.show("Password is not match", context, duration:2, gravity:  Toast.CENTER);
      }

      if(!regex.hasMatch(uEmails))
      {
        Toast.show("Email is not validate", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.CENTER);

      }


    }


  }
}