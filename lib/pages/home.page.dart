import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Center(
          child: SizedBox(
            width: 100,
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
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/post-picture-001.png"),
            fit: BoxFit.cover,
          ),
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
                  title: Text("Trilhas", style: TextStyle(color: Colors.white)),
                  subtitle: Text("Trilhas de aprendizado",
                      style: TextStyle(color: Colors.white54)),
                  trailing: Icon(Icons.arrow_forward, color: Colors.white),
                  onTap: () {
                    debugPrint('toquei no drawer');
                  }),
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
                  title: Text("Acompanhamento",
                      style: TextStyle(color: Colors.white)),
                  subtitle: Text("Reports, feedbacks...",
                      style: TextStyle(color: Colors.white54)),
                  trailing: Icon(Icons.arrow_forward, color: Colors.white),
                  onTap: () {
                    Navigator.pop(context);
                  }),
              ListTile(
                  leading: Icon(Icons.attach_money, color: Colors.white),
                  title: Text("Solicitar apoio financeiro",
                      style: TextStyle(color: Colors.white)),
                  subtitle: Text("Emprestimos",
                      style: TextStyle(color: Colors.white54)),
                  trailing: Icon(Icons.arrow_forward, color: Colors.white),
                  onTap: () {
                    Navigator.pop(context);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
