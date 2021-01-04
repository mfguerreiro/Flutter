import 'package:flutter/material.dart';

class relatorios extends StatefulWidget {
  @override
  _cadVendasState createState() => _cadVendasState();
}

class _cadVendasState extends State<relatorios> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.amber,
          centerTitle: true,
          title: Text(
            "Relatórios",
            style: TextStyle(fontSize: 28.0),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(
                Icons.list_alt,
                size: 35.0,
              ),
            )
          ]),
    );
  }
}
