import 'package:flutter/material.dart';

class Acompanhamento extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[100],
        shadowColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              border: new Border.all(color: Colors.transparent, width: 2.0),
              borderRadius: new BorderRadius.only(
                  bottomLeft: Radius.circular(25.0),
                  bottomRight: Radius.circular(25.0)),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFFF525aaff),
                  Color(0XFFF92B7F),
                ],
              )),
        ),
        title: Center(
          child: Container(
            padding: EdgeInsets.only(top: 0, left: 0, right: 37),
            child: Text(
              "Acompanhamento do negócio",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                  fontFamily: "Raleway"),
            ),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20, left: 40, right: 40),
        decoration: BoxDecoration(color: Colors.blue[100]),
        alignment: Alignment(0.0, -1),
        child: Column(
          children: <Widget>[
            Container(
              width: 300,
              height: 200,
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage("assets/avatar.png"),
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              alignment: Alignment(0.0, -1),
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                border: new Border.all(color: Colors.transparent, width: 2.0),
                borderRadius: new BorderRadius.circular(15),
                color: Colors.blue[600],
              ),
              child: FlatButton(
                padding: EdgeInsets.only(left: 0.0),
                child: Text('Reports', style: TextStyle(color: Colors.white)),
                onPressed: () => Navigator.pop(context, false),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment(0.0, -1),
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                border: new Border.all(color: Colors.transparent, width: 2.0),
                borderRadius: new BorderRadius.circular(15),
                color: Colors.blue[600],
              ),
              child: FlatButton(
                padding: EdgeInsets.only(left: 0.0),
                child: Text('Duvidas', style: TextStyle(color: Colors.white)),
                onPressed: () => Navigator.pop(context, false),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment(0.0, -1),
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                border: new Border.all(color: Colors.transparent, width: 2.0),
                borderRadius: new BorderRadius.circular(15),
                color: Colors.blue[600],
              ),
              child: FlatButton(
                padding: EdgeInsets.only(left: 0.0),
                child: Text('FAQ', style: TextStyle(color: Colors.white)),
                onPressed: () => Navigator.pop(context, false),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
