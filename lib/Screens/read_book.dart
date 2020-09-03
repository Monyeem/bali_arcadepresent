//
//
// import 'package:bali_arcade/Screens/pdf.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';
//
// class readbook extends StatefulWidget {
//   @override
//   _readbookState createState() => _readbookState();
// }
//
// class _readbookState extends State<readbook> {
//
//   //String url = 'https://drive.google.com/file/d/0B5Lsnk25QxCFaDdQZnJNQnRmeUk/view';
//   String pdfasset = 'assets/Americay tintin.pdf';
//
//   PDFDocument _doc;
//
//   bool loading;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _initpdf();
//   }
//
//   _initpdf() async {
//     final doc = await PDFDocument.fromAsset(pdfasset);
//     setState(() {
//       _doc = doc;
//       loading = false;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           backgroundColor: Colors.grey[800],
//           title: Text('Read Only',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w700),),
//
//         ),
//
//        body: SafeArea(
//            child: Container(
//              decoration: BoxDecoration(
//                gradient: LinearGradient(
//                  begin:Alignment.topCenter ,
//                  end: Alignment.bottomCenter,
//                  stops: [0.0001,0.2],
//                  colors: [Colors.grey[800],Colors.white24],
//
//                ),
//              ),
//
//              child: Padding(
//                padding: const EdgeInsets.all(25.0),
//                child: Container(
//                  height: 150,
//                  decoration:BoxDecoration(
//                      color: Colors.black,
//                      borderRadius: BorderRadius.all(Radius.circular(10))
//                  ),
//                  child: Row(
//                    children: <Widget>[
//                      SizedBox(width: 10,),
//                      Container(
//                        width: 110,
//                        height: 130,
//                        decoration: BoxDecoration(
//                            borderRadius: BorderRadius.all(Radius.circular(10)),
//                            image: DecorationImage(
//                                image:  AssetImage('images/tintin.jpg'),
//                                fit: BoxFit.fill
//                            )
//                        ),
//
//                      ),
//                      Container(
//                        width: 150,
//                        height: 140,
//
//                        child: Column(
//                          children: <Widget>[
//                            SizedBox(height: 5,),
//                            Padding(
//                              padding: const EdgeInsets.all(8.0),
//                              child: Align(
//                                  alignment: Alignment.topLeft,
//                                  child: Text('TinTin In America',
//                                    style: TextStyle(
//                                        color: Colors.white,fontSize: 14,
//                                        fontWeight: FontWeight.w900),
//                                  )
//                              ),
//                            ),
//                            Padding(
//                              padding: const EdgeInsets.only(left: 8),
//                              child: Align(
//                                  alignment: Alignment.topLeft,
//                                  child: Text('Adventure Book',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w600),)),
//                            ),
//                            Padding(
//                              padding: const EdgeInsets.only(left: 8,top: 8),
//                              child: Align(
//                                  alignment: Alignment.topLeft,
//                                  child: Text('Adventure of Tintin',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),)),
//                            ),
//
//                          ],
//                        ),
//                      ),
//                      SizedBox(width: 10,),
//                      GestureDetector(
//                        onTap: (){
//                          setState(() {
//                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => pdf()));
//                          });
//                        },
//                        child: Container(
//                          height: 150,
//                          width: 30,
//                          decoration:BoxDecoration(
//                              color: Color(0xff660066),
//                              borderRadius: BorderRadius.all(Radius.circular(10))
//                          ),
//                          child: Column(
//                            children: <Widget>[
//                              SizedBox(height: 40,),
//                              Text('R',style: TextStyle(color: Colors.white),),
//                              SizedBox(height: 2,),
//                              Text('E',style: TextStyle(color: Colors.white),),
//                              SizedBox(height: 2,),
//                              Text('A',style: TextStyle(color: Colors.white),),
//                              SizedBox(height: 2,),
//                              Text('D',style: TextStyle(color: Colors.white),),
//                              SizedBox(height: 2,),
//
//                            ],
//                          ),
//                        ),
//                      )
//                    ],
//                  ),
//                ),
//              ),
//            ),
//        ),
//
//       ),
//
//     );
//   }
// }
