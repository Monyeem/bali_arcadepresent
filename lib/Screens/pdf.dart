import 'package:flutter/material.dart';
// import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class pdf extends StatefulWidget {
  @override
  _pdfState createState() => _pdfState();
}

class _pdfState extends State<pdf> {

  String pdfasset = 'assets/Tintin.pdf';

  // PDFDocument _doc;

  bool loading;
  //
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   _initpdf();
  // }

  // _initpdf() async {
  //   // final doc = await PDFDocument.fromAsset(pdfasset);
  //   setState(() {
  //     _doc = doc;
  //     loading = false;
  //   });
  // }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.grey[800],
          title: Text('Read',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w700),),

        ),

        // body:  loading? Center(child: CircularProgressIndicator(),) : PDFViewer(document: _doc,),
      ),
    );
  }
}
