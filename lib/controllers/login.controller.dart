import 'dart:convert';
import 'dart:async';

import 'package:estimulo2020/pages/home.page.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class LoginController {
  void onClickLogin(var context, String email, String password) async {
    final response = await http.post(
      'https://estimuloapi.herokuapp.com/estimulo/v1/auth/login',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode == 200) { 
      final bodyParsed = json.decode(response.body);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(bodyParsed["response"]["token"]),
        ),
      );
    } else {
      final bodyParsed = json.decode(response.body);
      print(bodyParsed['errors']);
      Fluttertoast.showToast(
          msg: "Email ou senha inválidos.",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.TOP,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red[200],
          textColor: Colors.black,
          fontSize: 16.0);
    }
  }
}
