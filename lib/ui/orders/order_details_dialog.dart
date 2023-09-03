import 'package:flutter/material.dart';

class OrderDetailsDialog extends StatelessWidget {
  final String description;
  final double amount;

  const OrderDetailsDialog({
    Key? key,
    required this.description,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(description),
      content: Text('Amount: \$${amount.toStringAsFixed(2)}'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Close'),
        ),
      ],
    );
  }
}