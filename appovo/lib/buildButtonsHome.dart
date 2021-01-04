import 'package:flutter/material.dart';
import 'vendas/cadastrarVendas.dart';
import 'estoque/cadastrarEstoque.dart';
import 'relatorios/relatorios.dart';
import 'configuracoes/configuracores.dart';

class buildButtonsHome extends StatefulWidget {
  @override
  _buildButtonsHomeState createState() => _buildButtonsHomeState();
}

class _buildButtonsHomeState extends State<buildButtonsHome> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              Padding(
                //botão cadastrar vendas
                padding: EdgeInsets.fromLTRB(10.0, 70.0, 10.0, 10.0),
                child: ButtonTheme(
                    buttonColor: Colors.white,
                    minWidth: MediaQuery.of(context).size.width / 2.4,
                    height: MediaQuery.of(context).size.height / 4.5,
                    child: RaisedButton(
                        padding: EdgeInsets.all(20.0),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => cadVendas()));
                        },
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 8.0),
                              child: Icon(
                                Icons.request_page_outlined,
                                color: Colors.amber,
                                size: 70.0,
                              ),
                            ),
                            Text(
                              "Cadastrar\nvendas",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.amber),
                            ),
                          ],
                        ))),
              ),
              Padding(
                // botão cadastrar estoque
                padding: EdgeInsets.fromLTRB(10.0, 70.0, 10.0, 10.0),
                child: ButtonTheme(
                    buttonColor: Colors.white,
                    minWidth: MediaQuery.of(context).size.width / 2.4,
                    height: MediaQuery.of(context).size.height / 4.5,
                    child: RaisedButton(
                        padding: EdgeInsets.all(20.0),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => cadEstoque()));
                        },
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 8.0),
                              child: Icon(
                                Icons.store,
                                color: Colors.amber,
                                size: 70.0,
                              ),
                            ),
                            Text(
                              "Cadastrar\nestoque",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.amber),
                            ),
                          ],
                        ))),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              Padding(
                //botão relatórios
                padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
                child: ButtonTheme(
                    buttonColor: Colors.white,
                    minWidth: MediaQuery.of(context).size.width / 2.4,
                    height: MediaQuery.of(context).size.height / 4.5,
                    child: RaisedButton(
                        padding: EdgeInsets.all(20.0),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => relatorios()));
                        },
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 8.0),
                              child: Icon(
                                Icons.list_alt,
                                color: Colors.amber,
                                size: 70.0,
                              ),
                            ),
                            Text(
                              "Relatórios",
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.amber),
                            ),
                          ],
                        ))),
              ),
              Padding(
                //botão configurações
                padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
                child: ButtonTheme(
                    buttonColor: Colors.white,
                    minWidth: MediaQuery.of(context).size.width / 2.4,
                    height: MediaQuery.of(context).size.height / 4.5,
                    child: RaisedButton(
                        padding: EdgeInsets.all(20.0),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => configuracoes()));
                        },
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 8.0),
                              child: Icon(
                                Icons.settings,
                                color: Colors.amber,
                                size: 70.0,
                              ),
                            ),
                            Text(
                              "Configurações",
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.amber),
                            ),
                          ],
                        ))),
              ),
            ],
          ),
        )
      ],
    );
  }
}
