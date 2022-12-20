import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class NetworkHelper {
  NetworkHelper({required this.url});
  final String url;

  Future getData() async {
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var data = response.body.toString();
      return jsonDecode(data);
    } else {
      debugPrint(response.statusCode.toString());
    }
  }
}
