import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class cadVendas extends StatefulWidget {
  @override
  _cadVendasState createState() => _cadVendasState();
}

class _cadVendasState extends State<cadVendas> {
  TextEditingController _qtd = TextEditingController(text: "0");
  TextEditingController _data = TextEditingController(text: "12/05/2021");
  int _radioValue = 1;
  String dropDownValue = 'Centro';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.amber,
            title: Row(
              children: [
                Text(
                  "Cadastrar vendas",
                  style: TextStyle(fontSize: 28.0),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Icon(
                    Icons.request_page_outlined,
                    size: 35.0,
                  ),
                ),
              ],
            )),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Container(
                // borda dourada
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.amber,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                    //container do botão + e -
                    child: Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Row(
                          children: [Text("Quantidade")],
                        )),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          Container(
                            // botão -
                            width: 50.0,
                            height: 40.0,
                            child: RaisedButton(
                              child: Text("-",
                                  style: TextStyle(
                                      fontSize: 30.0, color: Colors.white)),
                              color: Colors.blue,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100.0)),
                              onPressed: () {
                                setState(() {
                                  if (_qtd.text.isEmpty ||
                                      int.parse(_qtd.text) == 0) {
                                    _qtd.text = "0";
                                  } else {
                                    int subtrair = int.parse(_qtd.text);
                                    _qtd.text = (subtrair - 1).toString();
                                  }
                                });
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
                            child: Container(
                              //campo de texto quantidade
                              width: 50.0,
                              height: 40.0,
                              child: TextField(
                                controller: _qtd,
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                textAlignVertical: TextAlignVertical.center,
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ),
                          ),
                          Container(
                            //botão +
                            width: 50.0,
                            height: 40.0,
                            child: RaisedButton(
                              child: Text("+",
                                  style: TextStyle(
                                      fontSize: 30.0, color: Colors.white)),
                              color: Colors.blue,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100.0)),
                              onPressed: () {
                                setState(() {
                                  if (_qtd.text.isEmpty) {
                                    _qtd.text = "0";
                                  } else {
                                    int somar = int.parse(_qtd.text);
                                    _qtd.text = (somar + 1).toString();
                                  }
                                });
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Column(
                              children: [
                                Row(children: <Widget>[
                                  Radio(
                                      value: 1,
                                      groupValue: _radioValue,
                                      onChanged: (int value) {
                                        setState(() {
                                          _radioValue = value;
                                        });
                                      }),
                                  Text("Cartela ",
                                      style: TextStyle(fontSize: 25.0))
                                ]),
                                Row(children: <Widget>[
                                  Radio(
                                      value: 2,
                                      groupValue: _radioValue,
                                      onChanged: (int value) {
                                        setState(() {
                                          _radioValue = value;
                                        });
                                      }),
                                  Text(
                                    "Dúzia    ",
                                    style: TextStyle(fontSize: 25.0),
                                  )
                                ]),
                                Row(children: <Widget>[
                                  Radio(
                                      value: 3,
                                      groupValue: _radioValue,
                                      onChanged: (int value) {
                                        setState(() {
                                          _radioValue = value;
                                        });
                                      }),
                                  Text("Unidade",
                                      style: TextStyle(fontSize: 25.0))
                                ]),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ))),
          ), //segundo quadrado
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Container(
                // borda dourada
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.amber,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.fromLTRB(10, 8, 5, 5),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 6.0),
                              child: Text("Lote"),
                            ),
                            Container(
                                width: MediaQuery.of(context).size.width / 7.2,
                                height: 30.0,
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  textAlignVertical: TextAlignVertical.center,
                                  style: TextStyle(fontSize: 20.0),
                                ))
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
                          child: Text("=", style: TextStyle(fontSize: 30.0)),
                        ),
                        Column(
                          // coluna tipo
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 4.0),
                              child: Text("Tipo", textAlign: TextAlign.start),
                            ),
                            Container(
                                width: 80.0,
                                height: 30.0,
                                color: Colors.grey[350],
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 10.0),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text("Branco",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                      )),
                                ))
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(1, 0, 1, 0.0),
                          child: Column(
                            // coluna qtd disponível
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 4.0),
                                child:
                                    Text("Estoque", textAlign: TextAlign.start),
                              ),
                              Container(
                                  width: 80.0,
                                  height: 30.0,
                                  color: Colors.grey[350],
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 10.0),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text("250",
                                        style: TextStyle(
                                          fontSize: 20.0,
                                        )),
                                  ))
                            ],
                          ),
                        ),
                        Column(
                          // coluna venda
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 4.0),
                              child: Text("Venda", textAlign: TextAlign.start),
                            ),
                            Container(
                                width: 80.0,
                                height: 30.0,
                                color: Colors.grey[350],
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 10.0),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text("R\$ 12,00",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                      )),
                                ))
                          ],
                        )
                      ],
                    ))),
          ),

          Padding(
            padding: EdgeInsets.all(5.0),
            child: Container(
                // borda dourada
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.amber,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Container(
                        //container rota/data
                        padding: EdgeInsets.fromLTRB(30, 8, 5, 5),
                        child: Row(children: [
                          //linha rota/data
                          Column(
                            //coluna rota
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 6.0),
                                child: Text("Rota"),
                              ),
                              DropdownButton<String>(
                                value: dropDownValue,
                                icon: Icon(Icons.arrow_downward),
                                elevation: 16,
                                items: <String>[
                                  'Centro',
                                  'Rosa Branca',
                                  'Maria Luiza',
                                  'Teste'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (newValue) {
                                  setState(() {
                                    dropDownValue = newValue;
                                  });
                                },
                              )
                            ],
                          ),
                          Column(
                            //coluna data
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(60, 0, 0, 6.0),
                                child: Text(
                                  "Data",
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(23, 0, 0, 0),
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(35, 8, 0, 9),
                                    width: 150.0,
                                    height: 50.0,
                                    child: TextField(
                                      controller: _data,
                                      keyboardType: TextInputType.number,
                                      textAlign: TextAlign.center,
                                      textAlignVertical:
                                          TextAlignVertical.center,
                                      style: TextStyle(fontSize: 20.0),
                                    ),
                                  ))
                            ],
                          )
                        ]))
                  ],
                )),
          ),
          Row(children: [
            Padding(
              padding: EdgeInsets.fromLTRB(40, 20, 30, 0),
              child: Container(
            // botão Cancelar,
            width: 110.0,
            height: 90.0,
            child: RaisedButton(
              child: Icon(Icons.close, color: Colors.white, size: 50.0),
              color: Colors.red,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.0)),
              onPressed: () {
                setState(() {});
              },
            ),
          ),
            ),
            
          Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 40, 0),
              child: Container(
            // botão Enviar,
            width: 110.0,
            height: 90.0,
            child: RaisedButton(
              child: Icon(Icons.done, color: Colors.white, size: 50.0,),
              color: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.0)),
              onPressed: () {
                setState(() {});
              },
            ),
          ),
            )
          ],)
          
        ])));
  }
}
