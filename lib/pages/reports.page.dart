import 'package:estimulo2020/pages/acompanhamento.page.dart';
import 'package:flutter/material.dart';

class Reports extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFECF0F3),
      body: SafeArea(
        child: ListView(
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
                InkWell(
                    child: Container(
                        child: FlatButton(
                  child: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ))),
                Align(
                  child: Container(
                    margin: EdgeInsets.only(top: 8),
                    child: Text(
                      'TELA DE REPORTS',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50, left: 80, right: 80),
                  child: Image.asset('assets/report.png'),
                ),
              ],
            ),
            SizedBox(height: 30),
            Align(
                child: Text('Qual o assunto do seu report?',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold))),
            Container(
              height: 40,
              margin: EdgeInsets.all(20),
              child: TextFormField(
                keyboardType: TextInputType.text,
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
                ),
              ),
            ),
            SizedBox(height: 5),
            Align(
                child: Text(
              'Descrição do Report',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            )),
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
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFFF525aaff),
                shape: BoxShape.circle,
              ),
              child: FlatButton(
                child: Icon(Icons.done, color: Colors.white),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
