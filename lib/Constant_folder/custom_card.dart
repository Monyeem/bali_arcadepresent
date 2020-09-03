import 'package:flutter/material.dart';


class CustomCard extends StatelessWidget {
 CustomCard({this.imageName,this.cardText});
 final String imageName; 
 final String cardText;
  @override
  Widget build(BuildContext context) {


    return Container(
                     width: 110,
                     height: 90,
                     child: RaisedButton(                           
                     elevation: 16,
                     splashColor: Color(0xFF660066),
                     shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                     side: BorderSide.none),
                    onPressed: () {
                      
                 
                  },
                 color:Colors.grey[800],
                 textColor: Colors.white,
                 child: Column(
                   children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top:12.0,bottom: 8,right: 12,left: 12),
                        child: SizedBox(
                          height: 40,
                          width: 50,
                          
                          child: Image.asset('images/$imageName',color: Colors.white,)),
                      ),
                      
                      Text(
                        cardText,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.white),
                      )
                   ],
                 ),
               ),
        );
  }
}