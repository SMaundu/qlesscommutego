import 'package:flutter/material.dart';

class RideHistoryScreen extends StatelessWidget {
  const RideHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> mockHistory = [
      {
        'origin': 'Nairobi CBD',
        'destination': 'Westlands',
        'date': '2025-07-10',
        'fare': 'KES 150',
      },
      {
        'origin': 'Kilimani',
        'destination': 'CBD',
        'date': '2025-07-08',
        'fare': 'KES 120',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Ride History'),
        backgroundColor: const Color(0xFF1217E7),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: mockHistory.length,
        itemBuilder: (context, index) {
          final ride = mockHistory[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: const Icon(Icons.directions_bus, color: Color(0xFFF7A309)),
              title: Text('${ride['origin']} → ${ride['destination']}'),
              subtitle: Text('Date: ${ride['date']}
Fare: ${ride['fare']}'),
              isThreeLine: true,
              trailing: const Icon(Icons.check_circle, color: Colors.green),
            ),
          );
        },
      ),
    );
  }
}