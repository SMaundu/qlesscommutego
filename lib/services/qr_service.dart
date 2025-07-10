import 'dart:convert';
import 'package:http/http.dart' as http;
import 'api_service.dart';

class QRService {
  Future<String?> fetchQrCode(int transactionId) async {
    final res = await http.get(
      Uri.parse('${ApiService.baseUrl}/generate-qr/$transactionId'),
    );

    if (res.statusCode == 200) {
      final data = jsonDecode(res.body);
      return data['qr_code'];
    }
    return null;
  }
}