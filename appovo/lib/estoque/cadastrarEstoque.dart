import 'package:flutter/material.dart';

class cadEstoque extends StatefulWidget {
  @override
  _cadVendasState createState() => _cadVendasState();
}

class _cadVendasState extends State<cadEstoque> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.amber,
            title: Row(
      children: [
        Text(
          "Cadastrar estoque",
          style: TextStyle(fontSize: 27.0),
        ),
        Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Icon(
            Icons.store,
            size: 34.0,
          ),
        ),
      ],
    )));
  }
}
