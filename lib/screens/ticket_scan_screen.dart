import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class TicketScanScreen extends StatefulWidget {
  const TicketScanScreen({super.key});

  @override
  State<TicketScanScreen> createState() => _TicketScanScreenState();
}

class _TicketScanScreenState extends State<TicketScanScreen> {
  String _scanResult = 'No scan yet';
  bool _isValid = false;

  Future<void> _scanQRCode() async {
    String scannedCode = await FlutterBarcodeScanner.scanBarcode(
      '#ff6666',
      'Cancel',
      true,
      ScanMode.QR,
    );

    if (!mounted || scannedCode == '-1') return;

    setState(() {
      _scanResult = scannedCode;
      _isValid = scannedCode.contains('sample-transaction-id'); // Simulate valid scan logic
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1217E7),
        title: const Text('Scan Ticket'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Scan Passenger QR Code',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: _scanQRCode,
              icon: const Icon(Icons.qr_code_scanner),
              label: const Text('Start Scanning'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFF7A309),
                padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Scan Result: $_scanResult',
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),
            Icon(
              _isValid ? Icons.check_circle : Icons.cancel,
              color: _isValid ? Colors.green : Colors.red,
              size: 48,
            ),
            const SizedBox(height: 12),
            Text(
              _isValid ? 'Ticket Valid ✅' : 'Invalid or Used Ticket ❌',
              style: TextStyle(
                fontSize: 18,
                color: _isValid ? Colors.green : Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}