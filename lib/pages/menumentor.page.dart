import 'package:estimulo2020/pages/mentoria.page.dart';
import 'package:flutter/material.dart';

class MenuMentor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 100,
              padding: EdgeInsets.only(top: 35),
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
              child: Text(
                'SOLICITAR MENTORIA',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Raleway"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
