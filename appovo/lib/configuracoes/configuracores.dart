import 'package:flutter/material.dart';

class configuracoes extends StatefulWidget {
  @override
  _cadVendasState createState() => _cadVendasState();
}

class _cadVendasState extends State<configuracoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.amber,
          centerTitle: true,
          title: Text(
            "Configurações",
            style: TextStyle(fontSize: 28.0),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(
                Icons.settings,
                size: 35.0,
              ),
            )
          ]),
    );
  }
}
