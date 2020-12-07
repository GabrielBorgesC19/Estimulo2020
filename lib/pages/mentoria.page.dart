import 'package:doglife/pages/home.page.dart';
import 'package:flutter/material.dart';

class Mentoria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFAFBFC),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: 150,
              padding: EdgeInsets.only(top: 25),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFF525aaff),
                    Color(0XFFFF66FF),
                  ],
                ),
              ),
              alignment: Alignment(0.0, -1),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 25),
                  child: Center(
                    child: Align(
                        alignment: Alignment.topCenter,
                        child: Text("SOLICITAR MENTORIA",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Raleway"),
                            textAlign: TextAlign.center)),
                  ),
                ),
                Container(
                  width: 380,
                  margin: EdgeInsets.only(top: 20, left: 5, right: 5),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(7))),
                  height: 150,
                  child: Container(child: Image.asset("assets/mentoria2.png")),
                ),
                Container(
                  width: 380,
                  margin: EdgeInsets.only(top: 20, left: 5, right: 5),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(7))),
                  height: 490,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 270, top: 20),
                        child: Text(
                          'Orientação',
                          style: TextStyle(
                            color: Color(0XFF848788),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        child: Text(
                            'A mentoria é realizada por chat ou por chamada de vídeo, com você podendo escolher a forma que achar mais adequeda.',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0XFF848788),
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5, left: 20, right: 20),
                        child: Text(
                          'Nos próximos 3 dias você receberá um e-mail com a data e horário do seu atendimento. Então, fique alerta :D',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0XFF848788),
                          ),
                        ),
                      ),
                      Container(
                        height: 250,
                        child: Image.asset('assets/mentoria3.png'),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0XFF5BC8F5),
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: FlatButton(
                          child: Text('VOLTAR PARA A TELA PRINCIPAL',
                              style: TextStyle(color: Colors.white)),
                          onPressed: () {
                            Navigator.pop(
                              context,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
