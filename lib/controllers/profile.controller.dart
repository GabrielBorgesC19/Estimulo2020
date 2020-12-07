import 'dart:convert';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class UserAddress {
  String address;
  String country;
  String state;
  UserAddress(this.address, this.country, this.state);
}

class UserProfile {
  String email;
  String firstName;
  String lastName;
  String phoneNumber;
  UserAddress address;
  UserProfile(this.email, this.firstName, this.lastName, this.phoneNumber,
      this.address);
}

T cast<T>(x) => x is T ? x : null;

class ProfileController {
  Future<UserProfile> getProfile(String token) async {
    final response = await http.get(
      'https://estimuloapi.herokuapp.com/estimulo/v1/user-profile',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'accessToken': token
      },
    );

    if (response.statusCode == 200) {
      final responseParsed = json.decode(response.body)["response"];
      UserProfile userProfile = UserProfile(
          responseParsed["email"],
          responseParsed["firstName"],
          responseParsed["lastName"],
          responseParsed["phoneNumber"],
          UserAddress(
              responseParsed["address"]["address"],
              responseParsed["address"]["country"],
              responseParsed["address"]["state"]));
      return userProfile;
    } else {
      final bodyParsed = json.decode(response.body);
      print(bodyParsed['errors']);
      Fluttertoast.showToast(
          msg: "Erro ao carregar o perfil.",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.TOP,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red[200],
          textColor: Colors.black,
          fontSize: 16.0);
    }
  }
}
