import 'dart:convert';
import 'dart:async';

import 'package:flutter/material.dart';
import '../pages/login.page.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class RedefinePasswordController {
  void onClickChange(var context, String email, String recoveryCode,
      String password, String verifyPassword) async {
    if (password != verifyPassword) {
      Fluttertoast.showToast(
          msg: "As senhas informadas são diferentes.",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.TOP,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red[200],
          textColor: Colors.black,
          fontSize: 16.0);

      return;
    }
    final response = await http.post(
      'https://estimuloapi.herokuapp.com/estimulo/v1/password/change-password',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'newPassword': password,
        'emailAddress': email,
        'recoveryCode': recoveryCode,
      }),
    );

    if (response.statusCode == 200) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginPage(),
        ),
      );

      Fluttertoast.showToast(
          msg: "Senha alterada com sucesso.",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.TOP,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green[200],
          textColor: Colors.black,
          fontSize: 16.0);
    } else {
      final bodyParsed = json.decode(response.body);
      print(bodyParsed['errors']);
      Fluttertoast.showToast(
          msg: "Erro ao validar o código.",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.TOP,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red[200],
          textColor: Colors.black,
          fontSize: 16.0);
    }
  }
}
