import 'package:flutter/material.dart';
import 'buildButtonsHome.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
            Image.asset('image/ovoFelizTransp.png', height: 60.0, width: 60.0,),
          
            Text(
            "Controle de ovos",
            style: TextStyle(fontSize: 30.0),
          ),
            ],
          ) ,
          
          
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: Column(
          children: <Widget>[
            buildButtonsHome(),
            Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: Text(
                "Versão: 1.0",
                style: TextStyle(color: Colors.amber, fontSize: 13.0),
              ),
            )
          ],
        ));
  }
}
