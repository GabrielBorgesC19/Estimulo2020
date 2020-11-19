import 'dart:convert';
import 'dart:async';

import 'package:flutter/material.dart';
import '../pages/password.redifined.page.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class CodePasswordController {
  void onClickVerify(var context, String email, String recoveryCode) async {
    final response = await http.post(
      'https://estimuloapi.herokuapp.com/estimulo/v1/password/verify-recovery-code?emailAddress=' + email + '&recoveryCode=' + recoveryCode,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      }
    );

    if (response.statusCode == 200) { 
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PasswordRedifinedPage(email, recoveryCode),
        ),
      );
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
