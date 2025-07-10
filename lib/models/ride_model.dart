class Ride {
  final int id;
  final int userId;
  final String origin;
  final String destination;
  final double amount;
  final String status;

  Ride({
    required this.id,
    required this.userId,
    required this.origin,
    required this.destination,
    required this.amount,
    required this.status,
  });

  factory Ride.fromJson(Map<String, dynamic> json) {
    return Ride(
      id: json['id'],
      userId: json['user_id'],
      origin: json['origin'],
      destination: json['destination'],
      amount: double.parse(json['amount'].toString()),
      status: json['status'],
    );
  }
}
