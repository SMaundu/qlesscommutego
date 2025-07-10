import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/user_model.dart';

class AuthProvider with ChangeNotifier {
  User? _user;
  User? get user => _user;

  Future<bool> login(String phone, String password, String role) async {
    final response = await http.post(
      Uri.parse('http://localhost:3000/api/login'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'phone': phone, 'password': password, 'role': role}),
    );

    if (response.statusCode == 200) {
      _user = User.fromJson(jsonDecode(response.body));
      notifyListeners();
      return true;
    }
    return false;
  }
}
