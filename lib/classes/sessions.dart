import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:localstorage/localstorage.dart';
import 'package:stick_lib/classes/user.dart';

class Sessions {
  static bool darkMode = false;
  static LocalStorage storage = LocalStorage('');
  static String user = "";
  static String mail = "";
  static String pass = "";
  static String acts = "";

  static User userObj = User(
    userId: "",
    userMail: "",
    userName: "",
    profilePic: "",
  );

  static Future<void> load() async {
    storage = LocalStorage('usercredentials.json');
    await storage.ready;

    if (storage.getItem('username') != null) {
      user = storage.getItem('username');
      pass = storage.getItem('password');
      loadUser();
    }

    return;
  }

  static bool hasAccount() {
    return (user != '' && pass != '');
  }

  static Future<void> loadUser() async {
    http.Response response = await http.post(
      Uri.parse('http://18.228.226.52/user/login'),
      headers: {'Content-Type': 'text/plain'},
      body: '{"username": "$user", "password": "$pass"}',
    );

    if (jsonDecode(response.body)['status'] == '403') return unset();
    userObj = User.fromJson(jsonDecode(response.body));
  }

  static void unset() {
    user = "";
    mail = "";
    pass = "";
    acts = "";
  }

  static Future<void> loadActs(BuildContext context) async {
    if (acts == "create") {
      http.Response response = await http.post(
        Uri.parse('http://18.228.226.52/user/new'),
        headers: {'Content-Type': 'text/plain'},
        // ignore: prefer_adjacent_string_concatenation
        body: '{' +
            '"usermail":"$mail",' +
            '"username":"$user",' +
            '"password":"$pass",' +
            '"profilepic":"https://sl-main-bucket.s3.sa-east-1.amazonaws.com/userpics/198550900_151667166986788_5195672549357263951_n.jpg"}',
      );

      if (jsonDecode(response.body)['status'] == '200') {
        Navigator.pushNamed(context, '/sessions');
        return;
      }

      storage.setItem('username', user);
      storage.setItem('password', pass);

      userObj = User.fromJson(jsonDecode(response.body));
      Navigator.pushNamed(context, '/');
      return;
    }
    if (acts == "enter") {
      http.Response response = await http.post(
        Uri.parse('http://18.228.226.52/user/login'),
        headers: {'Content-Type': 'text/plain'},
        body: '{"username": "$user", "password": "$pass"}',
      );

      if (jsonDecode(response.body)['status'] == '403') {
        Navigator.pushNamed(context, '/sessions');
        return;
      }

      storage.setItem('username', user);
      storage.setItem('password', pass);

      userObj = User.fromJson(jsonDecode(response.body));
      Navigator.pushNamed(context, '/');
      return;
    }
    return;
  }
}
