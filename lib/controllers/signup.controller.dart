import 'dart:convert';
import 'dart:async';

import 'package:flutter/material.dart';
import '../pages/login.page.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class SignUpController {
  void onClickSignUp(var context, String email, String password, String name,
      String phone, String state, String address) async {
    final response = await http.post(
      'https://estimuloapi.herokuapp.com/estimulo/v1/auth/register',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'password': password,
        'email': email,
        'address': address,
        'country': "country",
        'firstName': name,
        'lastName': name,
        'phoneNumber': phone,
        'state': state
      }),
    );

    final bodyParsed = json.decode(response.body);

    if (bodyParsed['response'] != null) {
      Fluttertoast.showToast(
          msg: "Cadastro realizado com sucesso",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.TOP,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green[200],
          textColor: Colors.black,
          fontSize: 16.0);

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginPage(),
        ),
      );
    } else if (bodyParsed['errors'] != null) {
      print(bodyParsed['errors']);
      Fluttertoast.showToast(
          msg: "Ocorreu um erro ao cadastrar o usuário",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.TOP,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red[200],
          textColor: Colors.black,
          fontSize: 16.0);
    }
  }
}
