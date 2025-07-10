import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PaymentProvider with ChangeNotifier {
  Future<bool> initiatePayment(String phone, int rideId, double amount) async {
    final response = await http.post(
      Uri.parse('http://localhost:3000/api/initiate-payment'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'phone': phone,
        'rideId': rideId,
        'amount': amount,
      }),
    );
    return response.statusCode == 200;
  }

  Future<String?> fetchQR(int transactionId) async {
    final response = await http.get(
      Uri.parse('http://localhost:3000/api/generate-qr/$transactionId'),
    );
    if (response.statusCode == 200) {
      return jsonDecode(response.body)['qr_code'];
    }
    return null;
  }
}
