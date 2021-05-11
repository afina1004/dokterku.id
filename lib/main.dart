import 'package:flutter/material.dart';
import 'fitur.dart';
import 'detail.dart';


void main() {
  runApp(new MaterialApp(
    title: "Beranda",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.green[400],
      appBar: new AppBar(
        title: new Text("Dokterku.id"),
        backgroundColor: Colors.green[700],
      ),
      drawer: new Drawer(
        child: new ListView(children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: new Text("AFINA JAHARA SYALABI"),
            accountEmail: new Text("1615051004"),
            currentAccountPicture: new GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new Detail(
                          nama: "AFINA JAHARA SYALABI",
                        )));
              },
              child: new CircleAvatar(
                backgroundImage: AssetImage('images/foto.jpeg'),
              ),
            ),
            decoration: new BoxDecoration(
                image: new DecorationImage(
                    image: AssetImage('images/13986.jpg'), fit: BoxFit.cover)),
          ),
          new ListTile(
            title: new Text("Fitur Kesehatan"),
            trailing: new Icon(Icons.local_hospital),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new Fitur(
                        nama: "AFINA JAHARA SYALABI",
                      )));
            },
          ),

          new ListTile(
            title: new Text("Close"),
            trailing: new Icon(Icons.close),
          ),
        ]),
      ),
      // body: Center(
      //   child: Container(
      //     padding: EdgeInsets.all(3),
      //     child: Image.asset('images/1.png')
      //   )
      // )
      body: SingleChildScrollView(
          child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 400,
                    width: 400,
                    child: Image.asset(
                      "images/doctor.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  Text(
                    "Dokterku.id",
                    style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 34,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Melayani untuk Dilayani",
                    style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ))),
    );
  }
}
