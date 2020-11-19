import 'dart:convert';
import 'dart:async';

import 'package:flutter/material.dart';
import '../pages/code.password.page.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class ResetPasswordController {
  void onClickReset(var context, String email) async {
    final response = await http.post(
      'https://estimuloapi.herokuapp.com/estimulo/v1/password/reset-password?emailAddress=' + email,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      }
    );

    if (response.statusCode == 200) {
      Fluttertoast.showToast(
          msg: "O código foi enviado para seu email.",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.TOP,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green[200],
          textColor: Colors.black,
          fontSize: 16.0);
          
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CodePasswordPage(email),
        ),
      );
    } else {
      final bodyParsed = json.decode(response.body);
      print(bodyParsed['errors']);
      Fluttertoast.showToast(
          msg: "Erro ao enviar o código.",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.TOP,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red[200],
          textColor: Colors.black,
          fontSize: 16.0);
    }
  }
}
