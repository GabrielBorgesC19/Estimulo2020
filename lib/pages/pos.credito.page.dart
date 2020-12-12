import 'package:flutter/material.dart';

class PosCredito extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.1, 1],
              colors: [
                Color(0XFFFF66FF),
                Color(0xFFF525aaff),
              ],
            ),
          ),
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    width: 400,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    margin: EdgeInsets.only(top: 15, left: 15, right: 15),
                    child: Stack(
                      children: [
                        Image.asset('assets/mulhercredito.png'),
                        Container(
                          width: 200,
                          height: 100,
                          margin:
                              EdgeInsets.only(top: 60, left: 150, right: 20),
                          child: Column(
                            children: [
                              Text(
                                'PARABÉNS',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color(0xFF6C63FF),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                              SizedBox(height: 20),
                              Text(
                                'Você acertou 4 de 5 perguntas.',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.pink[200],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 400,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    margin: EdgeInsets.only(top: 15, left: 15, right: 15),
                    child: Stack(
                      children: [
                        Container(
                            margin:
                                EdgeInsets.only(top: 20, left: 50, right: 20),
                            child: Text('E AGORA? O QUE FAZER?',
                                style: TextStyle(
                                    color: Color(0xFF6C63FF),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                                textAlign: TextAlign.center)),
                        Container(
                            margin:
                                EdgeInsets.only(top: 85, left: 15, right: 20),
                            child: Image.asset('assets/computadorcredito.png')),
                        Container(
                          width: 200,
                          height: 100,
                          margin:
                              EdgeInsets.only(top: 80, left: 160, right: 20),
                          child: Column(
                            children: [
                              SizedBox(height: 20),
                              Text(
                                'Solicite seu crédito através do nosso site.',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.pink[200],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 400,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    margin: EdgeInsets.only(
                        top: 15, left: 15, right: 15, bottom: 15),
                    child: Stack(
                      children: [
                        Container(
                          width: 400,
                          height: 211,
                          margin: EdgeInsets.only(top: 20, left: 45, right: 20),
                          child: Column(
                            children: [
                              Container(
                                  child: Text(
                                'CLIQUE NO LINK ABAIXO PARA ACESSAR NOSSO SITE:',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color(0xFF6C63FF),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              )),
                              SizedBox(height: 10),
                              Text(
                                'Você será encaminhado para nosso formulário.',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.pink[200],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                  color: Color(0XFF5BC8F5),
                                ),
                                margin: EdgeInsets.only(top: 20),
                                child: FlatButton(
                                  child: Text('IR PARA O SITE',
                                      style: TextStyle(color: Colors.white)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          )),
    ));
  }
}
