import 'package:flutter/material.dart';

class RideCard extends StatelessWidget {
  final String origin;
  final String destination;
  final String date;
  final String fare;

  const RideCard({
    super.key,
    required this.origin,
    required this.destination,
    required this.date,
    required this.fare,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: const Icon(Icons.directions_bus, color: Color(0xFFF7A309)),
        title: Text('$origin → $destination'),
        subtitle: Text('Date: $date\nFare: $fare'),
        trailing: const Icon(Icons.check_circle, color: Colors.green),
      ),
    );
  }
}
