import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/ride_model.dart';

class RideProvider with ChangeNotifier {
  List<Ride> _rides = [];
  List<Ride> get rides => _rides;

  Future<void> fetchRides(int userId) async {
    final response = await http.get(
      Uri.parse('http://localhost:3000/api/user-rides/$userId'),
    );

    if (response.statusCode == 200) {
      _rides = (jsonDecode(response.body) as List)
          .map((data) => Ride.fromJson(data))
          .toList();
      notifyListeners();
    }
  }
}
