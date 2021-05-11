import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';

void main() => runApp(Map());

class Map extends StatefulWidget{
  State<StatefulWidget> createState() => _Map();
  }
  
class _Map extends State<Map>{
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
          title: Text('Lokasi Undiksha'),
        ),
        body: WebView(
          initialUrl: "https://www.google.com/search?safe=strict&sxsrf=ALeKk00sPy5JjnS8dUAlgpZgjIhW0_Ayog:1594299454439&q=peta+undiksha&npsic=0&rflfq=1&rlha=0&rllag=-8117485,115087729,142&tbm=lcl&ved=2ahUKEwipvJalnMDqAhWBbisKHSP5BLcQtgN6BAgLEAQ&rldoc=1#rlfi=hd:;si:;mv:[[-8.1085837,115.09006900000001],[-8.1225918,115.0803693]];tbs:lrf:!1m4!1u3!2m2!3m1!1e1!2m1!1e3!3sIAE,lf:1,lf_ui:4",
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webiewController){
            _webcontrol.complete(webiewController);
          },
  
        ),
      ),
      );
    }
   
  }
  
  