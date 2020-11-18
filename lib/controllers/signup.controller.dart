import 'dart:convert';
import 'dart:async';

import 'package:http/http.dart' as http;

class SignUpController {
  void onClickSignUp(String email, String password) async {
    final response = await http.post(
      'https://estimuloapi.herokuapp.com/estimulo/v1/auth/register',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'password': email,
        'email': password,
        'address': 'address',
        'country': 'country',
        'firstName': 'firstName',
        'lastName': 'lastName',
        'phoneNumber': 'phoneNumber',
        'state': 'state'
      }),
    );

    final bodyParsed = json.decode(response.body);

    if (bodyParsed['response'] != null) {
      print(bodyParsed['response']);
    }

    if (bodyParsed['errors'] != null) {
      print(bodyParsed['errors']);
      //Toast.show(List.from(bodyParsed['errors'])[0]['message'], context, duration: Toast.LENGTH_LONG, gravity:  Toast.BOTTOM);
      //print(List.from(bodyParsed['errors'])[0]['message']);
    }
  }
}
