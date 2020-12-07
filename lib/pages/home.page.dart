import 'package:doglife/pages/acompanhamento.page.dart';
import 'package:doglife/pages/capacitacao.page.dart';
import 'package:doglife/pages/login.page.dart';
import 'package:doglife/pages/mentoria.page.dart';
import 'package:doglife/pages/menumentor.page.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        backgroundColor: Colors.blue[50],
        shadowColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              border: new Border.all(color: Colors.transparent, width: 2.0),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFFF525aaff),
                  Color(0XFFFF66FF),
                ],
              )),
        ),
        title: Center(
          child: SizedBox(
            width: 100,
            height: 60,
            child: Image.asset("assets/estimulo_logo.png"),
          ),
        ),
        actions: <Widget>[
          Container(
            width: 60,
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(top: 60),
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.blue[50],
            Colors.white,
          ],
        )),
        alignment: Alignment(0.0, 1.15),
        child: Column(
          children: [
            SizedBox(height: (50)),
            CarouselSlider(
              options: CarouselOptions(
                height: MediaQuery.of(context).size.width,
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
              ),
              items: [
                Builder(
                  builder: (BuildContext context) {
                    return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            //
                            context,
                            MaterialPageRoute(
                              builder: (context) => CapacitacaoGeral(),
                            ),
                          );
                        },
                        child: Container(
                          child: Text("Capacitação Geral",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "Raleway"),
                              textAlign: TextAlign.center),
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            image: new DecorationImage(
                                image: AssetImage(
                              "assets/capacitacao.png",
                            )),
                            shape: BoxShape.circle,
                            color: Colors.transparent,
                          ),
                        ));
                  },
                ),
                Builder(
                  builder: (BuildContext context) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          //
                          context,
                          MaterialPageRoute(
                            builder: (context) => Acompanhamento(),
                          ),
                        );
                      },
                      child: new Container(
                        child: Text("Acompanhamento",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.normal,
                                fontFamily: "Raleway"),
                            textAlign: TextAlign.center),
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          image: new DecorationImage(
                              image: AssetImage(
                            "assets/acompanhamento.png",
                          )),
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                        ),
                      ),
                    );
                  },
                ),
                Builder(
                  builder: (BuildContext context) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          //
                          context,
                          MaterialPageRoute(
                            builder: (context) => MenuMentor(),
                          ),
                        );
                      },
                      child: new Container(
                        child: Text("Mentoria Especifica",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.normal,
                                fontFamily: "Raleway"),
                            textAlign: TextAlign.center),
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          image: new DecorationImage(
                            image: AssetImage(
                              "assets/mentoria.png",
                            ),
                          ),
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 60, left: 40, right: 40),
              child: FlatButton(),
            ),
          ],
        ),
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors
              .blue[300], //This will change the drawer background to blue.
          //other styles
        ),
        child: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.3, 1],
                    colors: [
                      Color(0xFFF525aaff),
                      Color(0XFFFF66FF),
                    ],
                  ),
                ),
                child: SizedBox(
                  width: 80,
                  height: 80,
                  child: Image.asset("assets/logo.png"),
                ),
              ),
              ListTile(
                  leading: Icon(Icons.account_circle, color: Colors.white),
                  title: Text(
                    "Minha Conta",
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {}),
              ListTile(
                  leading: Icon(Icons.logout, color: Colors.white),
                  title: Text("Sair", style: TextStyle(color: Colors.white)),
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                        ModalRoute.withName('/'));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
