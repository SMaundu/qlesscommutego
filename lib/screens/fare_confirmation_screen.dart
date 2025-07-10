import 'package:flutter/material.dart';

class FareConfirmationScreen extends StatelessWidget {
  const FareConfirmationScreen({super.key});

  void _triggerPayment(BuildContext context) {
    // TODO: Replace with actual STK push logic
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Initiating M-Pesa payment...')),
    );
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/qr');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1217E7),
        title: const Text('Confirm Fare'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Trip Summary',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            const ListTile(
              leading: Icon(Icons.location_pin),
              title: Text('Pickup: Nairobi CBD'),
            ),
            const ListTile(
              leading: Icon(Icons.flag),
              title: Text('Destination: Westlands'),
            ),
            const ListTile(
              leading: Icon(Icons.attach_money),
              title: Text('Fare: KES 150'),
            ),
            const Spacer(),
            ElevatedButton.icon(
              onPressed: () => _triggerPayment(context),
              icon: const Icon(Icons.payment),
              label: const Text('Pay with M-Pesa'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFF7A309),
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}