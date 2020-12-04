import 'package:flutter/material.dart';

class Reports extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: 200,
            margin: EdgeInsets.only(top: 50, left: 40, right: 40),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(25))),
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                enabledBorder: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(25.0),
                  borderSide:
                      new BorderSide(color: Color(0XFF5BC8F5), width: 2.0),
                ),
                focusedBorder: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(15.0),
                  borderSide:
                      new BorderSide(color: Color(0XFF848788), width: 2.0),
                ),
                labelText: "Reports",
                labelStyle: TextStyle(
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(fontSize: 20, color: Colors.black),
              maxLines: 10,
              minLines: 3,
            )));
  }
}
