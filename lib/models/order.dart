class Order {
  final String id;
  final String description;
  final double amount;

  Order({
    required this.id,
    required this.description,
    required this.amount,
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      id: json['id'],
      description: json['description'],
      amount: json['amount'].toDouble(),
    );
  }
}