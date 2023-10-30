import 'dart:convert';
// import 'dart:convert'; dùng để chuyển đổi dữ liệu từ dạng json sang dạng map

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginAPI {
  static const baseUrl = "http://192.168.0.104:3000/login/";

  static SignUp(Map pdata) async {
    print(pdata);
    var url = Uri.parse("${baseUrl}add-signup");

    try {
      final res = await http.post(url, body: pdata);
      if (res.statusCode == 200) {
        var data = jsonDecode(res.body.toString());
        print(data);
      } else {
        print("Đăng ký thất bại");
      }
    } catch (error) {
      debugPrint(error.toString());
    }
  }

  static SignIn(Map pdata) async {
    print(pdata);
    var url = Uri.parse("${baseUrl}signin");

    try {
      final res = await http.post(url, body: pdata);
      if (res.statusCode == 200) {
        var data = jsonDecode(res.body.toString());
        if (data['success'] == true) {
          print(data);
          return data;
        } else {
          print(data);
          return data;
        }
      } else {
        print("Đăng nhập thất bại");
        return null;
      }
    } catch (error) {
      debugPrint(error.toString());
      return null;
    }
  }
}
