import 'UrineCalculator.dart';
import 'package:flutter/material.dart';
import 'UrineCalculator.dart';
// import 'package:uas_mobile/home_screen.dart';
// import 'package:uas_mobile/scanner.dart';
import 'show.dart';

import 'home_screen.dart';

class Fitur extends StatelessWidget {
  Fitur({this.nama, this.gambar});
  final String nama;
  final String gambar;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Fitur Dokterku.id"),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 200,
                      //width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                              image: AssetImage('images/13986.jpg'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            // color: Colors.blue,
            child: Column(
              children: <Widget>[
                SizedBox(height: 20),
                Text(
                  'Dokterku.id',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 5,
                  child: Container(
                    color: Colors.white,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Fitur Kesehatan Yang Tersedia:',
                      style: TextStyle(
                          fontSize: 20, color: Colors.green.withOpacity(0.6)),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            width: 400,
            child: Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(left: 20, top: 12),
                        padding: EdgeInsets.only(top: 20),
                        width: 130,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25)),
                          border: Border.all(
                            width: 3,
                            color: Colors.green,
                          ),
                        ),
                        child: Column(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(
                                Icons.insert_comment,
                                color: Colors.green,
                                size: 40,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Show()),
                                );
                              },
                            ),
                            Container(
                              color: Colors.green[600],
                              margin: EdgeInsets.only(top: 15),
                              width: 125,
                              height: 30,
                              child: Center(
                                child: Text(
                                  'Tambah Data',
                                  style: TextStyle(
                                      color: Colors.yellow, fontSize: 20),
                                ),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(left: 20, top: 12),
                        padding: EdgeInsets.only(top: 20),
                        width: 130,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25)),
                          border: Border.all(
                            width: 3,
                            color: Colors.green,
                          ),
                        ),
                        child: Column(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(
                                Icons.search,
                                color: Colors.green,
                                size: 40,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => UrineCalculatorScreen()),
                                );
                              },
                            ),
                            Container(
                              color: Colors.green[600],
                              margin: EdgeInsets.only(top: 15),
                              width: 125,
                              height: 30,
                              child: Center(
                                child: Text(
                                  'Cek Urine',
                                  style: TextStyle(
                                      color: Colors.yellow, fontSize: 20),
                                ),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
