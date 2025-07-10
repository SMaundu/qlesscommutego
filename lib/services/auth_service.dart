import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/user_model.dart';
import 'api_service.dart';

class AuthService {
  Future<User?> login(String phone, String password, String role) async {
    final res = await http.post(
      Uri.parse('${ApiService.baseUrl}/login'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'phone': phone,
        'password': password,
        'role': role,
      }),
    );

    if (res.statusCode == 200) {
      return User.fromJson(jsonDecode(res.body));
    }
    return null;
  }
}
