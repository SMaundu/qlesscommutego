// pubspec.yaml (relevant parts)
dependencies:
  flutter:
    sdk: flutter
  http: ^1.1.0
  qr_flutter: ^4.1.0
  shared_preferences: ^2.2.0
  google_maps_flutter: ^2.5.0
  flutter_barcode_scanner: ^2.0.0
  provider: ^6.1.0

flutter:
  assets:
    - assets/logo.png


// main.dart
import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/home_screen.dart';
import 'screens/fare_confirmation_screen.dart';
import 'screens/qr_code_screen.dart';
import 'screens/ticket_scan_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/ride_history_screen.dart';
import 'screens/admin_dashboard_screen.dart';

void main() {
  runApp(const QLessCommuteApp());
}

class QLessCommuteApp extends StatelessWidget {
  const QLessCommuteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: const Color(0xFFFF5622),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFFF5622),
          primary: const Color(0xFF1217E7),
          secondary: const Color(0xFFF7A309),
        ),
      ),
      darkTheme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/home': (context) => const HomeScreen(),
        '/confirm': (context) => const FareConfirmationScreen(),
        '/qr': (context) => const QRCodeScreen(),
        '/scan': (context) => const TicketScanScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/history': (context) => const RideHistoryScreen(),
        '/admin': (context) => const AdminDashboardScreen(),
      },
    );
  }
}

// Placeholder screen templates for each page (to be fully developed)

// Example:
// splash_screen.dart
// class SplashScreen extends StatelessWidget {
//   const SplashScreen({super.key});
//   @override
//   Widget build(BuildContext context) => Scaffold(body: Center(child: Text('Splash Screen')));
// }

// Repeat the structure above for:
// login_screen.dart
// register_screen.dart
// home_screen.dart
// fare_confirmation_screen.dart
// qr_code_screen.dart
// ticket_scan_screen.dart
// profile_screen.dart
// ride_history_screen.dart
// admin_dashboard_screen.dart
