import 'package:flutter/material.dart';

class Reports extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFECF0F3),
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
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
                      bottomRight: Radius.circular(100),
                      bottomLeft: Radius.circular(100),
                    ),
                  ),
                  alignment: Alignment(0.0, -1),
                ),
                Container(
                  margin: EdgeInsets.only(top: 40, left: 80, right: 80),
                  child: Image.asset('assets/report.png'),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text('Qual o assunto seu report?',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold)),
            Container(
              height: 40,
              margin: EdgeInsets.all(20),
              child: TextFormField(
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(5.0),
                    borderSide:
                        new BorderSide(color: Colors.white30, width: 2.0),
                  ),
                  focusedBorder: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(5.0),
                    borderSide:
                        new BorderSide(color: Colors.white30, width: 2.0),
                  ),
                  labelText: "Digite o assunto do seu report",
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Escreva sobre o relatorio',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: TextFormField(
                keyboardType: TextInputType.multiline,
                maxLines: 10,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(5.0),
                    borderSide:
                        new BorderSide(color: Colors.white30, width: 2.0),
                  ),
                  focusedBorder: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(5.0),
                    borderSide:
                        new BorderSide(color: Colors.white30, width: 2.0),
                  ),
                  labelText: "Digite o assunto do seu report",
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            FlatButton(child: Icon(Icons.done, color: Colors.blue[200]))
          ],
        ),
      ),
    );
  }
}
