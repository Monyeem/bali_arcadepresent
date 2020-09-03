import 'package:flutter/material.dart';
import 'Screens/check_screen.dart';
import 'Screens/dashboard.dart';
import 'Screens/language_select.dart';
import 'Screens/login_page.dart';
import 'Screens/signup_page.dart';
import 'Screens/splash_page.dart';
import 'Screens/shop_category.dart';
import 'Screens/arts_handicrafts.dart';
import 'Screens/cineplex.dart';
import 'Screens/AmusementScreen.dart';
import 'Screens/foodCourt.dart';
import 'Screens/orderNow.dart';
import 'Screens/cart.dart';
void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashScreen.id,
      routes: {
    // When navigating to the "/" route, build the FirstScreen widget.
    LoginPage.id: (context) => LoginPage(),
    // When navigating to the "/second" route, build the SecondScreen widget.
   SignUpPage.id: (context) => SignUpPage(),
   SplashScreen.id: (context) =>SplashScreen(),
   LanguageSelect.id:(context)=>LanguageSelect(),
   DashBoard.id:(context)=>DashBoard(),
   ShopCategory.id:(context)=>ShopCategory(),
   ArtsHandiCrafts.id:(context)=>ArtsHandiCrafts(),
   CinePlex.id:(context)=>CinePlex(),
   AmusementScreen.id:(context)=>AmusementScreen(),
   FoodCourt.id:(context)=>FoodCourt(),
   CheckScreen.id:(context)=>CheckScreen(),
     OrderNow.id:(context)=>OrderNow(),
   Cart.id:(context)=>Cart(),

    
    
  },
    );
  }
}



















// class MyApp extends StatelessWidget {
//   const MyApp({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//          body: Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               begin:Alignment.topCenter ,              
//               end: Alignment.bottomCenter,
//               stops: [0.1,0.5],
//               colors: [Colors.black,Colors.grey],

//             ),
//           ),
//           child: Column(
//             children: <Widget>[
                // Center(
                //       child: Padding(
                //       padding: const EdgeInsets.all(58.0),
                //       child: Image.asset('images/logo_white.png'),
                //     ),
                // ),

//               Expanded(
//                // color: Color(0xFF5e5e5e),
              
//                BoxDecoration(
//                   borderRadius:BorderRadius.all(Radius.circular(20)) 
//                 ),
//                 child: Column(
//                   children: <Widget>[

//                   ],

//                 ),
//               )


//             ],

//           ),

//         ),
//       )
    
//     );
//   }
// }

