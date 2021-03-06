import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';

void main() => runApp(Instagram());

class Instagram extends StatefulWidget{
  State<StatefulWidget> createState() => _Instagram();
  }
  
class _Instagram extends State<Instagram>{
  final Completer<WebViewController> _webcontrol =
    Completer<WebViewController>();
    
    void initState(){
      super.initState();
    }
    
    @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          backgroundColor: Colors.blue,
          title: Text('Instagram '),
        ),
        body: WebView(
          initialUrl: "https://instagram.com/afinajhrs_?igshid=tilcporqpa3d",
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webiewController){
            _webcontrol.complete(webiewController);
          },
  
        ),
      ),
      );
    }
   
  }
  
  