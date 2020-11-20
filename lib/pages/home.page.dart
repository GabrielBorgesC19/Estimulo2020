import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Center(
          child: SizedBox(
            width: 100,
            height: 70,
            child: Image.asset("assets/logo.png"),
          ),
        ),
        actions: <Widget>[
          Container(
            width: 60,
            child: FlatButton(
              child: Icon(
                Icons.search,
                color: Color(0xFFBABABA),
              ),
              onPressed: () => {},
            ),
          ),
        ],
      ),
      body: Container(
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
                    return Container(
                      child: Text("Capacitação Geral",
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontSize: 25,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Raleway"),
                          textAlign: TextAlign.center),
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        image: new DecorationImage(
                            image: AssetImage(
                          "assets/capacitacaorosa.png",
                        )),
                        shape: BoxShape.circle,
                        color: Colors.deepPurple,
                      ),
                    );
                  },
                ),
                Builder(
                  builder: (BuildContext context) {
                    return Container(
                      child: Text("Acompanhamento",
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontSize: 25,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Raleway"),
                          textAlign: TextAlign.center),
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        image: new DecorationImage(
                            image: AssetImage(
                          "assets/acompanhamentoverde.png",
                        )),
                        shape: BoxShape.circle,
                        color: Colors.deepPurple,
                      ),
                    );
                  },
                ),
                Builder(
                  builder: (BuildContext context) {
                    return Container(
                      child: Text("Mentoria Especifica",
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontSize: 25,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Raleway"),
                          textAlign: TextAlign.center),
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        image: new DecorationImage(
                          image: AssetImage(
                            "assets/mentoriaazul.png",
                          ),
                        ),
                        shape: BoxShape.circle,
                        color: Colors.deepPurple,
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors
              .deepPurple, //This will change the drawer background to blue.
          //other styles
        ),
        child: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                ),
                child: SizedBox(
                  width: 80,
                  height: 80,
                  child: Image.asset("assets/logo.png"),
                ),
              ),
              ListTile(
                  leading: Icon(Icons.blur_on, color: Colors.white),
                  title: Text(
                    "Trilhas",
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    "Trilhas de aprendizado",
                    style: TextStyle(color: Colors.white54),
                  ),
                  trailing: Icon(Icons.arrow_forward, color: Colors.white),
                  onTap: () {}),
              ListTile(
                  leading: Icon(Icons.device_unknown, color: Colors.white),
                  title:
                      Text("Mentoria", style: TextStyle(color: Colors.white)),
                  subtitle: Text("Mentorias especificas",
                      style: TextStyle(color: Colors.white54)),
                  trailing: Icon(Icons.arrow_forward, color: Colors.white),
                  onTap: () {
                    Navigator.pop(context);
                  }),
              ListTile(
                  leading: Icon(Icons.forum, color: Colors.white),
                  title: Text(
                    "Acompanhamento",
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    "Reports, feedbacks...",
                    style: TextStyle(color: Colors.white54),
                  ),
                  trailing: Icon(Icons.arrow_forward, color: Colors.white),
                  onTap: () {
                    Navigator.pop(context);
                  }),
              ListTile(
                leading: Icon(Icons.attach_money, color: Colors.white),
                title: Text(
                  "Solicitar apoio financeiro",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  "Emprestimos",
                  style: TextStyle(color: Colors.white54),
                ),
                trailing: Icon(Icons.arrow_forward, color: Colors.white),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
