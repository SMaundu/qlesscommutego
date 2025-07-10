import 'dart:convert';
import 'package:http/http.dart' as http;
import 'api_service.dart';

class PaymentService {
  Future<bool> initiatePayment(String phone, int rideId, double amount) async {
    final res = await http.post(
      Uri.parse('${ApiService.baseUrl}/initiate-payment'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'phone': phone,
        'rideId': rideId,
        'amount': amount,
      }),
    );
    return res.statusCode == 200;
  }
}