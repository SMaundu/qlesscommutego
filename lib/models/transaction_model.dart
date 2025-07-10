class Transaction {
  final int id;
  final int userId;
  final int rideId;
  final String mpesaCode;
  final String status;

  Transaction({
    required this.id,
    required this.userId,
    required this.rideId,
    required this.mpesaCode,
    required this.status,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) {
    return Transaction(
      id: json['id'],
      userId: json['user_id'],
      rideId: json['ride_id'],
      mpesaCode: json['mpesa_code'],
      status: json['status'],
    );
  }
}
