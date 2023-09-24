import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

class DB {
  static void registerAdmin(String name, String email, String password) async {
    try {
      Response response = await post(
        Uri.parse('http://localhost:4000/getAdmin/registerAdmin'),
        body: {
          'email': email,
          'password': password,
          'name': name,
          'supper': false,
          'role': 'admin',
        },
        // headers: <String, String>{
        //   'Content-Type': 'application/json',
        // },
      );
      final data = json.decode(response.body.toString());
      if (response.statusCode == 200) {
        if (kDebugMode) {
          print(data);
        }
      } else {
        if (kDebugMode) {
          print(data);
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }
}
