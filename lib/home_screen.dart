import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class Qrcode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HalamanQR(),
    );
  }
}

class HalamanQR extends StatefulWidget {
  @override
  _HalamanQRState createState() => _HalamanQRState();
}

class _HalamanQRState extends State<HalamanQR> {
  String text = 'Hasil QR Scan';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('QR Scan'),
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Image.asset('images/61336.jpeg'),
            ),
            RaisedButton(
              child: Text(
                "Scan",
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
              onPressed: () async {
                text = await scanner.scan();
                setState(() {});
              },
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(2), topRight: Radius.circular(2)),
                border: Border.all(
                  width: 3,
                  color: Colors.blue,
                ),
              ),
              child: Text(text),
            ),
          ],
        ),
      ),
    );
  }
}