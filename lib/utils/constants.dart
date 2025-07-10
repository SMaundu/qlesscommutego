class Constants {
  static const String appName = 'QLessCommute';
}

// utils/validators.dart
class Validators {
  static String? validatePhone(String? value) {
    if (value == null || value.isEmpty) return 'Phone number required';
    if (!RegExp(r'^\+?\d{10,13}\$').hasMatch(value)) return 'Invalid phone number';
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.length < 6) return 'Minimum 6 characters required';
    return null;
  }
}