import 'package:estimulo2020/pages/home.page.dart';
import 'package:estimulo2020/pages/pos.credito.page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FormCredito extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Container(
                height: 400,
                padding: EdgeInsets.only(top: 25),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    stops: [0.2, 1],
                    colors: [
                      Color(0XFFFF66FF),
                      Color(0xFFF525aaff),
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(35),
                    bottomLeft: Radius.circular(35),
                  ),
                ),
                alignment: Alignment(0.0, -1),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 10),
                child: InkWell(
                    child: Icon(Icons.arrow_back, color: Colors.white),
                    onTap: () {
                      Navigator.pop(
                        context,
                      );
                    }),
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Center(
                      child: Text("SOLICITAR CREDITO",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Raleway"),
                          textAlign: TextAlign.center),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20, left: 40),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          child: Image.asset('assets/credito.png'),
                        ),
                        Text("TESTE DE APTIDÃO",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Raleway"),
                            textAlign: TextAlign.center),
                      ],
                    ),
                  ),
                  Align(
                    child: Container(
                      padding: EdgeInsets.only(top: 30, left: 59, right: 50),
                      child: Text(
                          'Ao acertar o teste, você será redirecionado para o formulário de solicitação de crédito. Aguarde.',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.justify),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 50, left: 40, right: 40),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                    ),
                    height: 360,
                    width: 330,
                    child: Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
                          Text(
                            'COMO POSSO CONTINUAR MEU NEGOCIO?',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF6C63FF),
                            ),
                          ),
                          SizedBox(height: 15),
                          Image.asset('assets/desenhocredito.png'),
                          Container(
                            margin: EdgeInsets.only(top: 15),
                            child: Text(
                              'Vendas online, negociação de despesas e boa liderança com comunicação.',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(height: 15),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: FlatButton(
                                    child:
                                        Icon(Icons.cancel, color: Colors.red)),
                              ),
                              Expanded(
                                child: Text('Verdadeiro ou falso?',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center),
                              ),
                              Expanded(
                                child: FlatButton(
                                    child:
                                        Icon(Icons.done, color: Colors.green)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                      color: Color(0XFF5BC8F5),
                    ),
                    child: FlatButton(
                      child: Text(
                        'Enviar',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PosCredito(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
