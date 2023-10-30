import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class productsAPI {
  static const baseUrl = "http://192.168.0.104:3000/product/";

  static Future<List<Map<String, dynamic>>> getProducts() async {
    var url = Uri.parse("${baseUrl}get-product");

    try {
      final res = await http.get(url);
      if (res.statusCode == 200) {
        var data = jsonDecode(res.body.toString());
        return List<Map<String, dynamic>>.from(data);
      } else {
        print("Lấy dữ liệu thất bại");
        return [];
      }
    } catch (error) {
      debugPrint(error.toString());
      return [];
    }
  }
}
