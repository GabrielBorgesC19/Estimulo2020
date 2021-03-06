import 'package:estimulo2020/pages/reports.page.dart';
import 'package:flutter/material.dart';

class Acompanhamento extends StatelessWidget {
  String reportCard;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFAFBFC),
      body: SafeArea(
        child: Stack(children: [
          Container(
            height: 200,
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
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25))),
            alignment: Alignment(0.0, -1),
          ),
          Column(children: [
            Container(
                padding: EdgeInsets.only(top: 20),
                child: Center(
                    child: Text("DASHBOARD",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Raleway"),
                        textAlign: TextAlign.center))),
            Container(
              margin: EdgeInsets.only(top: 20, left: 40, right: 40),
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
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              height: 200,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 5,
                      left: 45,
                      right: 45,
                      bottom: 140,
                    ),
                    child: Text('Concluidos'),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 5,
                      left: 55,
                      right: 45,
                      bottom: 140,
                    ),
                    child: Text('Pendentes'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    color: Colors.white,
                  ),
                  child: Row(children: [
                    Container(
                        height: 70, child: Image.asset('assets/relatorio.png')),
                    Container(
                        child: Text('Report 1',
                            style: TextStyle(color: Colors.black))),
                  ])),
              SizedBox(height: 10),
              Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    color: Colors.white,
                  ),
                  child: Row(children: [
                    Container(
                        height: 70, child: Image.asset('assets/relatorio.png')),
                    Container(
                        child: Text('Report 2',
                            style: TextStyle(color: Colors.black))),
                  ])),
              SizedBox(height: 10),
              Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    color: Colors.white,
                  ),
                  child: Row(children: [
                    Container(
                        height: 70, child: Image.asset('assets/relatorio.png')),
                    Container(
                        child: Text('Report 3',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black))),
                  ])),
              SizedBox(height: 60),
              Align(
                  child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFFF525aaff),
                      Color(0XFFFF66FF),
                    ],
                  ),
                ),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Reports(),
                      ),
                    );
                  },
                  child: Icon(Icons.add, color: Colors.white),
                ),
              )),
            ])
          ]),
        ]),
      ),
    );
  }
}
